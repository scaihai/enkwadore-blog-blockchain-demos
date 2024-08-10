// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StorageExample {
    
    uint256[] public numbers; // Array stored in storage
    struct Person {
        string name;
        uint age;
    }
    mapping(address => Person) public people; // Mapping stored in storage
}