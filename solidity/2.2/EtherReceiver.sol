// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherReceiver {
    // Function to handle plain Ether transfers
    receive() external payable {}

    // Function to handle Ether transfers with data
    fallback() external payable {}
}