// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Mapping to store balances of addresses
    mapping(address => uint256) private balances;

    // Constructor to initialize balances
    constructor() {
        // Initialize some balances for demonstration
        balances[msg.sender] = 1000;
    }

    // Function to return the balance of a given address
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }

    // Function to transfer tokens (not used in staticcall, but here for completeness)
    function transfer(address recipient, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }
}