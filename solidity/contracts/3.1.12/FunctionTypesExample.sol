// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionTypesExample {
    // Define a function type
    function(uint, uint) internal pure returns (uint) private addFunction;

    constructor() {
        // Assign a function to the function type variable
        addFunction = add;
    }

    // A simple addition function
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }

    // Using the function type in another function
    function executeAddition(uint a, uint b) public view returns (uint) {
        return addFunction(a, b);
    }
}