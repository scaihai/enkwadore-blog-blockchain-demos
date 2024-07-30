// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiLineNatSpecCommentExample {
    uint256 public value;

    /**
     * @notice This function sets the value of the state variable `value`.
     * @dev Ensure that the input value is a positive integer.
     * @param _value The new value to be set.
     */
    function setValue(uint256 _value) public {
        value = _value;
    }

    /**
     * @notice Retrieve the current value of the state variable `value`.
     * @return The current value of `value`.
     */
    function getValue() public view returns (uint256) {
        return value;
    }
}