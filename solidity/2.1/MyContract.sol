// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State variables
    uint public myNumber;
    string public myString;
    address public myAddress;
    
    // Constructor to initialize state variables
    constructor(uint _number, string memory _string, address _address) {
        myNumber = _number;
        myString = _string;
        myAddress = _address;
    }
}