// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Array utilities that could be useful. Operates on arrays IN-PLACE.
/// @dev This can certainly be done in assembly much more efficiently.
/// @author Kryptoklob (https://github.com/kryptoklob/mate/blob/main/src/arrays/ArrayUtils.sol)
library InPlaceArrayUtils {
    // Transforms each element in a supplied array with the supplied function
    function map(address[] memory self, function(address) pure returns (address) transform) internal pure {
        for (uint256 i = 0; i < self.length; i++) {
            self[i] = transform(self[i]);
        }
    }

    // Transforms each element in a supplied array with the supplied function
    function map(uint256[] memory self, function(uint256) pure returns (uint256) transform) internal pure {
        for (uint256 i = 0; i < self.length; i++) {
            self[i] = transform(self[i]);
        }
    }
}
