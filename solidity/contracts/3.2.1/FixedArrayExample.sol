// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FixedArrayExample {
    uint[3] public fixedArray = [1, 2, 3];

    function getElement(uint index) public view returns (uint) {
        require(index < fixedArray.length, "Index out of bounds");
        return fixedArray[index];
    }
}