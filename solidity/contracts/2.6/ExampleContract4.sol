// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract4 {
    struct Person {
        string name;
        uint age;
        address wallet;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age, address _wallet) public {
        people.push(Person(_name, _age, _wallet));
    }

    function getPerson(uint _index) public view returns (string memory, uint, address) {
        Person storage person = people[_index];
        return (person.name, person.age, person.wallet);
    }
}