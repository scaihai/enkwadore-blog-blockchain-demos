// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Shipping {
    enum Status { Pending, Shipped, Delivered, Canceled }

    Status public status;
}