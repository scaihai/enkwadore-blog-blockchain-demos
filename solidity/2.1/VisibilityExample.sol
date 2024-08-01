// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample {
    uint public publicVariable = 1; // accessible everywhere
    uint internal internalVariable = 2; // accessible within the contract and derived contracts
    uint private privateVariable = 3; // accessible only within this contract
    
    function getPrivateVariable() public view returns (uint) {
        return privateVariable;
    }
}