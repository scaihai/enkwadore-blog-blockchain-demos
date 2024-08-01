// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultipleModifiersExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    modifier validAddress(address _address) {
        require(_address != address(0), "Invalid address");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner validAddress(newOwner) {
        owner = newOwner;
    }
}
