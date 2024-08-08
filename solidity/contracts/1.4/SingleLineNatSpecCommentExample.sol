// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SingleLineNatSpecCommentExample {
    /// @dev The state variable is an integer that stores a single integer value
    uint256 public value = 123456789;

    /// @notice This function sets the value of the state variable
    function setValue(uint256 _value) public {
        value = _value;
    }
}