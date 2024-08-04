// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTransfer {
    address payable public recipient;

    constructor(address payable _recipient) {
        recipient = _recipient;
    }

    function sendEther() external payable {
        require(msg.value > 0, "Must send some Ether");
        recipient.transfer(msg.value);
    }
}