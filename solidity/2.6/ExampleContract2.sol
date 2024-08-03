// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract2 {
    struct Person {
        string name;
        uint age;
        address wallet;
    }

    Person public person; // Declaring a struct variable at the contract level

    function setPerson(string memory _name, uint _age, address _wallet) public {
        person = Person(_name, _age, _wallet); // Initializing the struct
    }
}