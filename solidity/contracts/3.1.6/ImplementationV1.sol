// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImplementationV1 {
    address public implementation;
    address public owner;
    uint256 public x;

    function setX(uint _value) public {
        x = _value;
    }
}