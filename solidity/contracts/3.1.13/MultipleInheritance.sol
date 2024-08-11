// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    function sayHelloFromA() public pure returns (string memory) {
        return "Hello from A";
    }
}

contract B {
    function sayHelloFromB() public pure returns (string memory) {
        return "Hello from B";
    }
}

contract C is A, B {
    function sayHelloFromBoth() public pure returns (string memory) {
        return string(abi.encodePacked(A.sayHelloFromA(), " and ", B.sayHelloFromB()));
    }
}