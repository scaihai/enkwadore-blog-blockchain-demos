// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SimpleWallet2 {
    mapping(address => uint) public balance;

    error InsufficientBalance(uint requested, uint available);

    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        if (amount > balance[msg.sender]) {
            revert InsufficientBalance(amount, balance[msg.sender]);
        }
        balance[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}