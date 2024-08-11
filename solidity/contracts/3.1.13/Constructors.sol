// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Parent3 {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Child3 is Parent3 {
    constructor(string memory _childName) Parent3(_childName) {
        // Additional initialization if needed
    }
}