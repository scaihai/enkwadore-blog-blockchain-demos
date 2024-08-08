// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    struct Address {
        string street;
        string city;
        string state;
    }

    struct Person {
        string name;
        uint age;
        Address addressInfo;
    }

    Person public person;

    function setPerson(
        string memory _name,
        uint _age,
        string memory _street,
        string memory _city,
        string memory _state
    ) public {
        person = Person(_name, _age, Address(_street, _city, _state));
    }

    function getPersonAddress() public view returns (string memory, string memory, string memory) {
        return (person.addressInfo.street, person.addressInfo.city, person.addressInfo.state);
    }
}