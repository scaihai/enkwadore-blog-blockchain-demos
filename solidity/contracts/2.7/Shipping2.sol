// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Shipping2 {
    enum Status { Pending, Shipped, Delivered, Canceled }

    Status public status;

    function setStatus(Status _status) public {
        status = _status;
    }

    function getStatus() public view returns (Status) {
        return status;
    }

    function cancel() public {
        status = Status.Canceled;
    }
}