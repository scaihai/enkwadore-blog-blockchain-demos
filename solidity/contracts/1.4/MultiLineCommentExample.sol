// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiLineCommentExample {
    uint256 public value;

    /* 
     * This is a multi-line comment.
     * It can be used to explain complex logic or provide detailed documentation.
     */
    function setValue(uint256 _value) public {
        value = _value;
    }
}