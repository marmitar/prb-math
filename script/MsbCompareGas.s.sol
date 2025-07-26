// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

import { console } from "forge-std/src/Script.sol";

import { GasEstimationScript } from "./utils/GasEstimationScript.sol";
import { convert } from "../src/UD60x18.sol";
import "../src/Common.sol" as Common;

/// @notice `msb` using `gt()` and doing all `or()`s at the end.
function msbGtFinalOrs(uint256 x) pure returns (uint256 result) {
    assembly ("memory-safe") {
        let msb7 := shl(7, gt(x, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
        x := shr(msb7, x)
        let msb6 := shl(6, gt(x, 0xFFFFFFFFFFFFFFFF))
        x := shr(msb6, x)
        let msb5 := shl(5, gt(x, 0xFFFFFFFF))
        x := shr(msb5, x)
        let msb4 := shl(4, gt(x, 0xFFFF))
        x := shr(msb4, x)
        let msb3 := shl(3, gt(x, 0xFF))
        x := shr(msb3, x)
        let msb2 := shl(2, gt(x, 0xF))
        x := shr(msb2, x)
        let msb1 := shl(1, gt(x, 0x3))
        x := shr(msb1, x)
        let msb0 := gt(x, 0x1)
        result := or(or(or(or(or(or(or(msb0, msb1), msb2), msb3), msb4), msb5), msb6), msb7)
    }
}

/// @notice `msb` using `gt()` and recalculating `x >> r` every time.
function msbGtOriginalX(uint256 x) pure returns (uint256 result) {
    // note: must update result every time in this version, otherwise `x >> r` would
    // be wrong. In reality, only one of the two optimizations is possible, either
    // `msb*FinalOrs` or `msb*OriginalX`.
    assembly ("memory-safe") {
        result := shl(7, gt(x, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
        result := or(result, shl(6, gt(shr(result, x), 0xFFFFFFFFFFFFFFFF)))
        result := or(result, shl(5, gt(shr(result, x), 0xFFFFFFFF)))
        result := or(result, shl(4, gt(shr(result, x), 0xFFFF)))
        result := or(result, shl(3, gt(shr(result, x), 0xFF)))
        result := or(result, shl(2, gt(shr(result, x), 0xf)))
        result := or(result, shl(1, gt(shr(result, x), 0x3)))
        result := or(result, gt(shr(result, x), 0x1))
    }
}

/// @notice `msb` using `lt()` and doing all `or()`s at the end.
function msbLtFinalOrs(uint256 x) pure returns (uint256 result) {
    assembly ("memory-safe") {
        let msb7 := shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x))
        x := shr(msb7, x)
        let msb6 := shl(6, lt(0xFFFFFFFFFFFFFFFF, x))
        x := shr(msb6, x)
        let msb5 := shl(5, lt(0xFFFFFFFF, x))
        x := shr(msb5, x)
        let msb4 := shl(4, lt(0xFFFF, x))
        x := shr(msb4, x)
        let msb3 := shl(3, lt(0xFF, x))
        x := shr(msb3, x)
        let msb2 := shl(2, lt(0xF, x))
        x := shr(msb2, x)
        let msb1 := shl(1, lt(0x3, x))
        x := shr(msb1, x)
        let msb0 := lt(0x1, x)
        result := or(or(or(or(or(or(or(msb0, msb1), msb2), msb3), msb4), msb5), msb6), msb7)
    }
}

/// @notice `msb` using `lt()` and recalculating `x >> r` every time.
function msbLtOriginalX(uint256 x) pure returns (uint256 result) {
    assembly ("memory-safe") {
        result := shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x))
        result := or(result, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x))))
        result := or(result, shl(5, lt(0xFFFFFFFF, shr(result, x))))
        result := or(result, shl(4, lt(0xFFFF, shr(result, x))))
        result := or(result, shl(3, lt(0xFF, shr(result, x))))
        result := or(result, shl(2, lt(0xf, shr(result, x))))
        result := or(result, shl(1, lt(0x3, shr(result, x))))
        result := or(result, lt(0x1, shr(result, x)))
    }
}

contract MsbCheck is GasEstimationScript {
    enum Version {
        GtFinalOrs,
        GtOriginalX,
        LtFinalors,
        LtOrignalX,
        Common
    }

    function test(uint256 x, Version v) private {
        if (v == Version.GtFinalOrs) {
            assertIsMsb(x, runGtFinalOrs(x));
        } else if (v == Version.GtOriginalX) {
            assertIsMsb(x, runGtOriginalX(x));
        } else if (v == Version.LtFinalors) {
            assertIsMsb(x, runLtFinalOrs(x));
        } else if (v == Version.LtOrignalX) {
            assertIsMsb(x, runLtOrignalX(x));
        } else if (v == Version.Common) {
            assertIsMsb(x, runCommon(x));
        } else {
            revert("invalid version");
        }
    }

    function runGtFinalOrs(uint256 x) private gasSample returns (uint256 msb) {
        return msbGtFinalOrs(x);
    }

    function runGtOriginalX(uint256 x) private gasSample returns (uint256 msb) {
        return msbGtOriginalX(x);
    }

    function runLtFinalOrs(uint256 x) private gasSample returns (uint256 msb) {
        return msbLtFinalOrs(x);
    }

    function runLtOrignalX(uint256 x) private gasSample returns (uint256 msb) {
        return msbLtOriginalX(x);
    }

    function runCommon(uint256 x) private gasSample returns (uint256 msb) {
        return Common.msb(x);
    }

    function assertIsMsb(uint256 x, uint256 msb) private pure {
        if (x == 0) {
            vm.assertEq(msb, 0, "wrong msb for zero");
        } else {
            vm.assertEq(x >> msb, 1, "not the msb");
        }
    }

    function run() external {
        testRandom("gt() with final or()s", Version.GtFinalOrs);
        testRandom("gt() keeping original x", Version.GtOriginalX);
        testRandom("lt() with final or()s", Version.LtFinalors);
        testRandom("lt() keeping original x", Version.LtOrignalX);
        testRandom("msb() from Common.sol", Version.Common);
    }

    uint256 internal immutable RUNS = vm.envOr("RUNS", uint256(2) ** 10);

    function testRandom(string memory name, Version v) private display testCase(name) {
        bytes32 seed = 0x5f9c056501da448f42ad400aea0451a36330bb2957534e6f6f3d0cb64545931e;
        for (uint256 i = 0; i < RUNS; i++) {
            uint256 x = uint256(keccak256(abi.encode(seed, i)));
            test(x, v);
        }
    }

    modifier display() {
        _;
        displayStats(gasStats[gasStats.length - 1]);
    }

    function displayStats(GasStats memory stats) private pure {
        console.log("%s: %s", stats.name, vm.toString(convert(stats.average)));
    }
}
