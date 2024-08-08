// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Aliasing an import
import {MyContract6 as ContractAlias} from "./MyLibrary1.sol";

contract MyContract3 {

    // Using the alias
    ContractAlias public contractInstance;
}