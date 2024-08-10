// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DynamicArrayExample {
    uint[] public dynamicArray;

    function addElement(uint _element) public {
        dynamicArray.push(_element);
    }

    function getElement(uint index) public view returns (uint) {
        require(index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[index];
    }

    function removeLastElement() public {
        require(dynamicArray.length > 0, "Array is empty");
        dynamicArray.pop();
    }
}