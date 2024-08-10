// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CalldataExample {
    
    function processData(uint256[] calldata data) external pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < data.length; i++) {
            total += data[i];
        }
        return total;
    }
}