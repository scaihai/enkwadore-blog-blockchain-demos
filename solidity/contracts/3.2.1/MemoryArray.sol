// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryArray {
    
    function doubleNumbers(uint[] memory _numbers) public pure returns (uint[] memory) {
        uint[] memory doubled = new uint[](_numbers.length);
        for (uint i = 0; i < _numbers.length; i++) {
            doubled[i] = _numbers[i] * 2;
        }
        return doubled;
    }
}