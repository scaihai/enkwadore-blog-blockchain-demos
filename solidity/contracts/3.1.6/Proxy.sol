// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {
    address public implementation;
    address public owner;
    uint256 public x = 5;

    constructor(address _implementation) {
        implementation = _implementation;
        owner = msg.sender;
    }

    function upgradeTo(address _newImplementation) external onlyOwner {
        implementation = _newImplementation;
    }

    function setX(uint _x) external {
        (bool success, ) = implementation.delegatecall(
            abi.encodeWithSignature("setX(uint256)", _x)
        );
        require(success, "setX(x) Delegatecall failed");
    }

    function getX() public view returns (uint256) {
        return x;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}
