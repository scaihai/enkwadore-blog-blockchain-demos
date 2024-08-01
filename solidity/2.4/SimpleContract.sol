// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    // Declare an event
    event DataStored(uint256 indexed id, string data);

    uint256 public dataCount;

    // Function to store data and emit an event
    function storeData(string memory _data) public {
        dataCount++;
        emit DataStored(dataCount, _data);
    }
}