// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Overloaded lib for creating dynamic memory arrays of types uint, address, and bool
/// @dev This can certainly be done in assembly much more efficiently.
/// @author Kryptoklob (https://github.com/kryptoklob/mate/blob/main/src/arrays/ArrayGibber.sol)
library ArrayGibber {
    function gibEmpty() internal pure returns (address[] memory) {
        address[] memory emptyArray = new address[](0);
        return emptyArray;
    }

    function gibEmptyTuples() internal pure returns (address[2][] memory) {
        address[2][] memory emptyArray = new address[2][](0);
        return emptyArray;
    }

	function gib(uint256 x0) internal pure returns (uint256[] memory array) {
		array = new uint256[](1);

		array[0] = x0;
	}

	function gib(uint256 x0, uint256 x1) internal pure returns (uint256[] memory array) {
		array = new uint256[](2);

		array[0] = x0;
		array[1] = x1;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](3);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](4);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](5);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4,
		uint256 x5
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](6);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4,
		uint256 x5,
		uint256 x6
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](7);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4,
		uint256 x5,
		uint256 x6,
		uint256 x7
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](8);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4,
		uint256 x5,
		uint256 x6,
		uint256 x7,
		uint256 x8
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](9);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
	}

	function gib(
		uint256 x0,
		uint256 x1,
		uint256 x2,
		uint256 x3,
		uint256 x4,
		uint256 x5,
		uint256 x6,
		uint256 x7,
		uint256 x8,
		uint256 x9
	) internal pure returns (uint256[] memory array) {
		array = new uint256[](10);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
		array[9] = x9;
	}

	function gib(address x0) internal pure returns (address[] memory array) {
		array = new address[](1);

		array[0] = x0;
	}

	function gib(address x0, address x1) internal pure returns (address[] memory array) {
		array = new address[](2);

		array[0] = x0;
		array[1] = x1;
	}

	function gib(
		address x0,
		address x1,
		address x2
	) internal pure returns (address[] memory array) {
		array = new address[](3);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3
	) internal pure returns (address[] memory array) {
		array = new address[](4);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4
	) internal pure returns (address[] memory array) {
		array = new address[](5);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4,
		address x5
	) internal pure returns (address[] memory array) {
		array = new address[](6);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4,
		address x5,
		address x6
	) internal pure returns (address[] memory array) {
		array = new address[](7);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4,
		address x5,
		address x6,
		address x7
	) internal pure returns (address[] memory array) {
		array = new address[](8);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4,
		address x5,
		address x6,
		address x7,
		address x8
	) internal pure returns (address[] memory array) {
		array = new address[](9);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
	}

	function gib(
		address x0,
		address x1,
		address x2,
		address x3,
		address x4,
		address x5,
		address x6,
		address x7,
		address x8,
		address x9
	) internal pure returns (address[] memory array) {
		array = new address[](10);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
		array[9] = x9;
	}

	function gib(bool x0) internal pure returns (bool[] memory array) {
		array = new bool[](1);

		array[0] = x0;
	}

	function gib(bool x0, bool x1) internal pure returns (bool[] memory array) {
		array = new bool[](2);

		array[0] = x0;
		array[1] = x1;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2
	) internal pure returns (bool[] memory array) {
		array = new bool[](3);

		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3
	) internal pure returns (bool[] memory array) {
		array = new bool[](4);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4
	) internal pure returns (bool[] memory array) {
		array = new bool[](5);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4,
		bool x5
	) internal pure returns (bool[] memory array) {
		array = new bool[](6);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4,
		bool x5,
		bool x6
	) internal pure returns (bool[] memory array) {
		array = new bool[](7);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4,
		bool x5,
		bool x6,
		bool x7
	) internal pure returns (bool[] memory array) {
		array = new bool[](8);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4,
		bool x5,
		bool x6,
		bool x7,
		bool x8
	) internal pure returns (bool[] memory array) {
		array = new bool[](9);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
	}

	function gib(
		bool x0,
		bool x1,
		bool x2,
		bool x3,
		bool x4,
		bool x5,
		bool x6,
		bool x7,
		bool x8,
		bool x9
	) internal pure returns (bool[] memory array) {
		array = new bool[](10);
		array[0] = x0;
		array[1] = x1;
		array[2] = x2;
		array[3] = x3;
		array[4] = x4;
		array[5] = x5;
		array[6] = x6;
		array[7] = x7;
		array[8] = x8;
		array[9] = x9;
	}
}
