// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

abstract contract Animal {
    function makeSound() public virtual returns (string memory);
}

contract Dog is Animal {
    // Implementing the abstract function
    function makeSound() public pure override returns (string memory) {
        return "Woof!";
    }
}