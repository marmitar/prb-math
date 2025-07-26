// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import { Script } from "forge-std/src/Script.sol";

import { UD60x18, convert, UNIT, ud } from "../../src/UD60x18.sol";

/// @dev Scripts for estimating gas usage.
abstract contract GasEstimationScript is Script {
    struct GasStats {
        string name;
        uint256 count;
        uint256 sum;
        UD60x18 average;
        UD60x18 stdDev;
        uint256 minimum;
        uint256 secondMinimum;
        uint256 maximum;
        uint256 secondMaximum;
        UD60x18 quartile1;
        UD60x18 median;
        UD60x18 quartile3;
    }

    GasStats[] internal gasStats;

    modifier testCase(string memory testName) {
        vm.pauseGasMetering();
        _;
        finishSamples(testName);
        vm.resumeGasMetering();
    }

    uint256[] private gasSamples;

    modifier gasSample() {
        vm.resumeGasMetering();
        uint256 startGas = gasleft();
        _;
        uint256 endGas = gasleft();
        vm.pauseGasMetering();

        uint256 gasUsed = startGas - endGas - 2;
        gasSamples.push(gasUsed);
    }

    function finishSamples(string memory testName) private {
        gasStats.push(summarize(testName, gasSamples));
        delete gasSamples;
    }

    function summarize(string memory name, uint256[] memory samples) private pure returns (GasStats memory summary) {
        heapSort(samples);

        uint256 count = samples.length;
        (uint256 sum, uint256 sumSq) = sums(samples);
        UD60x18 average = convert(sum) / convert(count);
        UD60x18 variance = convert(sumSq) / convert(count) - average * average;

        summary.name = name;
        summary.count = count;
        summary.sum = sum;
        summary.average = average;
        summary.stdDev = variance.sqrt();
        summary.minimum = samples[0];
        summary.secondMinimum = samples[1];
        summary.maximum = samples[count - 1];
        summary.secondMaximum = samples[count - 2];
        summary.quartile1 = percentile(samples, 25);
        summary.median = percentile(samples, 50);
        summary.quartile3 = percentile(samples, 75);
    }

    function sums(uint256[] memory array) private pure returns (uint256 sum, uint256 sumSq) {
        for (uint256 i = 0; i < array.length; i++) {
            uint256 value = array[i];
            sum += value;
            sumSq += value * value;
        }
    }

    function percentile(uint256[] memory sortedArray, uint8 p) private pure returns (UD60x18 value) {
        UD60x18 rank = convert(sortedArray.length - 1) * convert(p) / ud(100e18);
        uint256 index = convert(rank);
        UD60x18 low = convert(sortedArray[index]);
        UD60x18 high = convert(sortedArray[index + 1]);
        return (UNIT - rank.frac()) * low + rank.frac() * high;
    }

    /// @dev
    function heapSort(uint256[] memory array) private pure {
        uint256 n = array.length;

        for (uint256 i = n / 2; i > 0;) {
            i--;
            heapify(array, n, i);
        }

        for (uint256 i = n - 1; i > 0;) {
            (array[0], array[i]) = (array[i], array[0]);
            heapify(array, i, 0);
            i--;
        }
    }

    /// @dev Turn a subtree of size `n` rooted at index `i` into a heap.
    function heapify(uint256[] memory array, uint256 n, uint256 i) private pure {
        while (true) {
            uint256 largest = i;
            uint256 left = 2 * i + 1;
            uint256 right = 2 * i + 2;

            if (left < n && array[left] > array[largest]) {
                largest = left;
            }

            if (right < n && array[right] > array[largest]) {
                largest = right;
            }

            if (largest == i) {
                break;
            }

            (array[i], array[largest]) = (array[largest], array[i]);
            i = largest;
        }
    }
}
