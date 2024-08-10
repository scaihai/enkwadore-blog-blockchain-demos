// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CrowdFunding {
    uint public minimumContribution = 1 gwei;

    function contribute() external payable {
        require(msg.value >= minimumContribution, "Contribution too small");
        // Handle contribution logic
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}