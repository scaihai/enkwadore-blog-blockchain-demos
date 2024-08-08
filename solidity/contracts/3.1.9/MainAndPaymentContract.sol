// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentContract {
    receive() external payable {
        // do nothing
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
