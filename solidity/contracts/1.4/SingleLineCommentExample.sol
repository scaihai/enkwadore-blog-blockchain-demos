// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SingleLineCommentExample {
    uint256 public value;

    // This is a single-line comment explaining the next line of code
    function setValue(uint256 _value) public {
        value = _value; // Assign the input value to the state variable
    }
}