// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

abstract contract Animal {
    // Abstract function with no implementation
    function makeSound() public virtual returns (string memory);
}