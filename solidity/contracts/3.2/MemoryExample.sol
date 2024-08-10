// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MemoryExample {
    
    function getSum(uint256[] memory numbers) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
}