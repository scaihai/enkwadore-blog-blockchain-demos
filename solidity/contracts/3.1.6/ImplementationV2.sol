// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImplementationV2 {
    address public implementation;
    address public owner;
    uint256 public x;

    function setX(uint _x) external {
        x = _x * 2;
    }
}