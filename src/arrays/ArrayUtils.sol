// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Array utilities that could be useful.
/// @dev This can certainly be done in assembly much more efficiently.
/// @author Kryptoklob (https://github.com/kryptoklob/mate/blob/main/src/arrays/ArrayUtils.sol)
library ArrayUtils {
	// Push(), but for dynamic memory arrays. Not very gas efficient.
	function push(uint256[] memory self, uint256 newValue) public pure returns (uint256[] memory array) {
		array = new uint256[](self.length + 1);

		for (uint256 i = 0; i < self.length; i++) {
			array[i] = self[i];
		}

		array[self.length] = newValue;

		return array;
	}

	// Push(), but for dynamic memory arrays. Not very gas efficient.
	function push(address[] memory self, address newValue) public pure returns (address[] memory array) {
		array = new address[](self.length + 1);

		for (uint256 i = 0; i < self.length; i++) {
			array[i] = self[i];
		}

		array[self.length] = newValue;

		return array;
	}

	// Pop(), but for dynamic memory arrays. Not very gas efficient.
	function pop(uint256[] memory self) public pure returns (uint256[] memory array, uint256 popped) {
		array = new uint256[](self.length - 1);

		for (uint256 i = 0; i < self.length - 1; i++) {
			array[i] = self[i];
		}

		return (array, self[self.length - 1]);
	}

	// Pop(), but for dynamic memory arrays. Not very gas efficient.
	function pop(address[] memory self) public pure returns (address[] memory array, address popped) {
		array = new address[](self.length - 1);

		for (uint256 i = 0; i < self.length - 1; i++) {
			array[i] = self[i];
		}

		return (array, self[self.length - 1]);
	}

	// Returns an array of the supplied uint with the supplied length
	function expand(uint256 toRepeat, uint256 totalLength) public pure returns (uint256[] memory array) {
		array = new uint256[](totalLength);

		if (toRepeat == 0) return array;

		for (uint256 i = 0; i < totalLength; i++) {
			array[i] = toRepeat;
		}

		return array;
	}

	// Returns an array of the supplied address with the supplied length
	function expand(address toRepeat, uint256 totalLength) public pure returns (address[] memory array) {
		array = new address[](totalLength);

		if (toRepeat == address(0)) return array;

		for (uint256 i = 0; i < totalLength; i++) {
			array[i] = toRepeat;
		}

		return array;
	}

	// Returns an array of the supplied bool with the supplied length
	function expand(bool toRepeat, uint256 totalLength) public pure returns (bool[] memory array) {
		array = new bool[](totalLength);

		if (toRepeat == false) return array;

		for (uint256 i = 0; i < totalLength; i++) {
			array[i] = true;
		}

		return array;
	}

	// Returns an array filtered by the supplied filter function
	function filter(uint256[] memory input, function(uint256) pure returns (bool) keep)
		internal
		pure
		returns (uint256[] memory filtered)
	{
		uint256 numToKeep = 0;

		for (uint256 i = 0; i < input.length; i++) {
			if (keep(input[i])) numToKeep++;
		}

		filtered = new uint256[](numToKeep);
		uint256 filteredIndex = 0;

		for (uint256 i = 0; i < input.length; i++) {
			if (keep(input[i])) {
				filtered[filteredIndex] = input[i];
				filteredIndex++;
			}
		}

		return filtered;
	}

	// Returns an array filtered by the supplied filter function
	function filter(address[] memory input, function(address) pure returns (bool) keep)
		internal
		pure
		returns (address[] memory filtered)
	{
		uint256 numToKeep = 0;

		for (uint256 i = 0; i < input.length; i++) {
			if (keep(input[i])) numToKeep++;
		}

		filtered = new address[](numToKeep);
		uint256 filteredIndex = 0;

		for (uint256 i = 0; i < input.length; i++) {
			if (keep(input[i])) {
				filtered[filteredIndex] = input[i];
				filteredIndex++;
			}
		}

		return filtered;
	}

	// Returns a *new* array with the supplied mapping function applied to each element
	function map(address[] memory self, function(address) pure returns (address) transform)
		internal
		pure
		returns (address[] memory mapped)
	{
		mapped = new address[](self.length);

		for (uint256 i = 0; i < self.length; i++) {
			mapped[i] = transform(self[i]);
		}

		return mapped;
	}

	// Returns a *new* array with the supplied mapping function applied to each element
	function map(uint256[] memory self, function(uint256) pure returns (uint256) transform)
		internal
		pure
		returns (uint256[] memory mapped)
	{
		mapped = new uint256[](self.length);

		for (uint256 i = 0; i < self.length; i++) {
			mapped[i] = transform(self[i]);
		}

		return mapped;
	}

	// Given an array of addresses, filter out and return the nonzero elements
	function filterEmpties(address[] memory input) internal pure returns (address[] memory filtered) {
		return filter(input, addressNonzero);
	}

	// Given an array of uints, filter out and return the nonzero elements
	function filterEmpties(uint256[] memory input) internal pure returns (uint256[] memory filtered) {
		return filter(input, uintNonzero);
	}

	function uintNonzero(uint256 x) internal pure returns (bool) {
		return x != 0;
	}

	function addressNonzero(address x) internal pure returns (bool) {
		return x != address(0);
	}
}
