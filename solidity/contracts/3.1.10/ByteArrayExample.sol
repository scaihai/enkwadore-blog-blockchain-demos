// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ByteArrayExample {
    bytes32 public hash1;
    bytes32 public hash2;
    bytes32 fixedArray = "Solidity";

    function setHashes(bytes32 _hash1, bytes32 _hash2) public {
        hash1 = _hash1;
        hash2 = _hash2;
    }

    function areHashesEqual() public view returns (bool) {
        return hash1 == hash2;
    }
}
