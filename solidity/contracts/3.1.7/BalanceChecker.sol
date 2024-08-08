// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceChecker {
    function checkBalance(address token, address user) external view returns (uint256) {
        // Encode the function signature for balanceOf(address)
        (bool success, bytes memory data) = token.staticcall(
            abi.encodeWithSignature("balanceOf(address)", user)
        );
        
        // Revert if the call was not successful
        require(success, "Staticcall failed");

        // Decode the returned data
        uint256 balance = abi.decode(data, (uint256));
        
        return balance;
    }
}