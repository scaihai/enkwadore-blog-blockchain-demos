// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    address public owner;

    constructor() {
        owner = msg.sender; // Sets the owner to the address that deployed the contract
    }

    function getOwnerBalance() public view returns (uint) {
        return owner.balance; // Returns the balance of the owner
    }
}