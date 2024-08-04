// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Callee {

    string public name;

    function receiveEther() public payable {
        // do nothing as this contract can hold is balance
        // in address(this).balance
    }

    function register(string memory _name) public payable returns (string memory) {
        name = _name;
        return "Registered";
    }
}