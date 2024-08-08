// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Caller {
    address payable public callee;

    constructor(address payable _callee) {
        callee = _callee;
    }

    function sendEtherAndCall() external payable {
        (bool success, ) = callee.call{value: msg.value}(
            abi.encodeWithSignature("receiveEther()")
        );
        require(success, "Call failed");
    }

    function sendEtherAndCall2() external payable returns (string memory) {
        bytes memory payload = abi.encodeWithSignature("register(string)", "MyName");
        (bool success, bytes memory returnData) = callee.call(payload);
        require(success, "The call was not successful");
        string memory result = abi.decode(returnData, (string));
        return result;
    }
}