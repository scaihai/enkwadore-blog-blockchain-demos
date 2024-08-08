// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing everything from a file
import * as MyLibrary from "./MyLibrary1.sol";

contract MyContract4 {

    // Using an imported element
    MyLibrary.MyContract6 public contractInstance;
}