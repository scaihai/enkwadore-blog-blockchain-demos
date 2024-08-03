// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint) public balance;

    function transfer(address to, uint amount) public {
        if (balance[msg.sender] < amount) {
            revert("Insufficient balance for transfer");
        }
        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
}