// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentContract {
    event Received(address, uint);
    
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }
}

contract MainContract {
    PaymentContract pc = new PaymentContract();

    function triggerPayment() public payable {
        address payable pcAddress = payable(pc);
        pcAddress.transfer(msg.value);
    }

    function getPaymentContract() public view returns (PaymentContract) {
        return pc;
    }
}
