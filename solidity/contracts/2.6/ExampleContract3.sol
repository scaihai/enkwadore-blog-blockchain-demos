// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract3 {
    struct Person {
        string name;
        uint age;
        address wallet;
    }

    Person public person;

    function setPerson(string memory _name, uint _age, address _wallet) public {
        person = Person(_name, _age, _wallet);
    }

    function getPersonName() public view returns (string memory) {
        return person.name;
    }

    function updatePersonAge(uint _newAge) public {
        person.age = _newAge;
    }
}