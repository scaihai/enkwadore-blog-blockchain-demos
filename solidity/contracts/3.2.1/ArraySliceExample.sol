// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArraySliceExample {

    function sliceArray(uint256[] calldata numbers, uint start, uint end)
    public pure returns (uint256[] memory) {
        // assuming Original array: [1, 2, 3, 4, 5]

        // Slice from index 1 to 3 (exclusive)
        uint256[] memory slicedArray = numbers[start : end]; // [2, 3]

        return slicedArray;
    }
}