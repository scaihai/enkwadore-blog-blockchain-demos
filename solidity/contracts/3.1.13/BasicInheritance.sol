// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Base contract
contract Parent1 {
    string public name;

    function setName(string memory _name) public {
        name = _name;
    }
}

// Derived contract
contract Child1 is Parent1 {
    function getName() public view returns (string memory) {
        return name;
    }
}