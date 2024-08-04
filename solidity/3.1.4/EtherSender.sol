// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherSender {
    address payable public recipient;

    constructor(address payable _recipient) {
        recipient = _recipient;
    }

    function sendEther(uint256 amount) public payable {
        require(msg.value >= amount, "Insufficient balance sent");
        
        bool sent = payable(recipient).send(amount);
        require(sent, "Failed to send Ether");
    }
}