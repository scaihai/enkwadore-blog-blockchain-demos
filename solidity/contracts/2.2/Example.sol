// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint256 public value;

    // A view function that returns the current value
    function getValue() public view returns (uint256) {
        return value;
    }

    // A function that modifies the state
    function setValue(uint256 _value) public {
        value = _value;
    }

    // A payable function that accepts Ether
    function deposit() public payable {
        // Function logic to handle the deposit
    }
}