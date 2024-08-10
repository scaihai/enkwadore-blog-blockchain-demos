// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TimeLock {
    address payable public beneficiary;
    uint public releaseTime;

    constructor(address payable _beneficiary) payable {
        beneficiary = _beneficiary;
        releaseTime = block.timestamp + 1 hours;
    }

    function release() public {
        require(block.timestamp >= releaseTime, "Current time is before release time");
        require(address(this).balance > 0, "No funds to release");

        beneficiary.transfer(address(this).balance);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function getBeneficiaryBalance() public view returns (uint) {
        return beneficiary.balance;
    }
}