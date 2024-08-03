// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableExample {
    address payable public recipient;

    constructor(address payable _recipient) {
        recipient = _recipient; // Sets the recipient address
    }

    function sendEther() public payable {
        require(msg.value > 0, "Send some ether");
        recipient.transfer(msg.value); // Transfers the received Ether to the recipient
    }

    function getRecipientBalance() public view returns (uint) {
        return recipient.balance; // Returns the balance of the recipient
    }
}