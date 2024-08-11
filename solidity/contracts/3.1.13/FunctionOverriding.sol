// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Parent2 {
    function greet() public pure virtual returns (string memory) {
        return "Hello from Parent";
    }
}

contract Child2 is Parent2 {
    function greet() public pure override returns (string memory) {
        return "Hello from Child";
    }
}