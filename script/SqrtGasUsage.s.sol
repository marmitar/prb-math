// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import { console } from "forge-std/src/Script.sol";

import { GasEstimationScript } from "./utils/GasEstimationScript.sol";
import { UD60x18, convert } from "../src/UD60x18.sol";
import "../src/Common.sol" as Common;

contract SqrtGasUsage is GasEstimationScript {
    function test(uint256 x) private {
        assertIsRoot(x, sqrt(x));
    }

    function sqrt(uint256 x) private gasSample returns (uint256 root) {
        return Common.sqrt(x);
    }

    function assertIsRoot(uint256 x, uint256 root) private pure {
        vm.assertLe(root ** 2, x, "square root too big");
        if (x != type(uint256).max) {
            vm.assertGt((root + 1) ** 2, x, "square root too small");
        } else {
            vm.assertEq(root, type(uint128).max, "wrong square root for UINT256_MAX");
        }
    }

    function run() external {
        testUint8();
        testUint16();
        testPow2();
        testAlmostPow2();
        testRandom();
        testE18();
        testE36();
    }

    function testUint8() private display testCase("all 8-bit numbers") {
        for (uint256 i = 0; i <= type(uint8).max; i++) {
            test(i);
        }
    }

    function testUint16() private display testCase("all 16-bit numbers") {
        for (uint256 i = 0; i <= type(uint16).max; i++) {
            test(i);
        }
    }

    function testPow2() private display testCase("all powers of two") {
        for (uint256 i = 0; i < 256; i++) {
            uint256 pi = 2 ** i;
            test(pi);
        }
    }

    function testAlmostPow2() private display testCase("almost powers of two") {
        for (uint256 i = 0; i < 256; i++) {
            uint256 pi = 2 ** i;
            test(pi - 1);
        }
    }

    uint256 internal immutable RUNS = vm.envOr("RUNS", uint256(2) ** 18);

    function testRandom() private display testCase("randomized values") {
        bytes32 seed = 0x7567739e3d73e54878217ee501bbb9b2fe749ab61c88280f86ae58b39b3017a0;
        for (uint256 i = 0; i < RUNS; i++) {
            uint256 x = uint256(keccak256(abi.encode(seed, i)));
            test(x);
        }
    }

    function testE18() private display testCase("uint16 * 1e18") {
        for (uint256 i = 1; i <= type(uint16).max; i++) {
            test(i * 1e18);
        }
    }

    function testE36() private display testCase("uint16 * 1e18 * 1e18") {
        for (uint256 i = 1; i <= type(uint16).max; i++) {
            test(i * 1e18 * 1e18);
        }
    }

    modifier display() {
        _;
        displayStats(gasStats[gasStats.length - 1]);
    }

    function fmtFloat(UD60x18 value) private pure returns (string memory formatted) {
        string memory left = vm.toString(convert(value));
        string memory right = vm.toString(convert(value.frac() * convert(10)));
        return string.concat(left, ".", right);
    }

    function displayStats(GasStats memory stats) private pure {
        string memory sum = vm.toString(stats.sum);
        string memory count = vm.toString(stats.count);
        string memory min1 = vm.toString(stats.minimum);
        string memory min2 = vm.toString(stats.secondMinimum);
        string memory max2 = vm.toString(stats.secondMaximum);
        string memory max1 = vm.toString(stats.maximum);
        string memory avg = fmtFloat(stats.average);
        string memory std = fmtFloat(stats.stdDev);
        string memory q1 = fmtFloat(stats.quartile1);
        string memory q2 = fmtFloat(stats.median);
        string memory q3 = fmtFloat(stats.quartile3);

        console.log("===== %s =====", stats.name);
        console.log("total gas used = %s / %s", sum, count);
        console.log("minimum = %s, %s, ...", min1, min2);
        console.log("quartiles = ..., %s, ..., %s, ..., %s, ...", q1, q2, q3);
        console.log(unicode"average = %s ± %s", avg, std);
        console.log("maximum = ..., %s, %s", max2, max1);
        console.log();
    }
}
