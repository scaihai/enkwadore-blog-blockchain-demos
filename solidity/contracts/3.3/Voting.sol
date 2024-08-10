// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Voting2 {

    struct Voter {
        bool voted;
        uint8 vote;  // 0 for no vote, 1 for option A, 2 for option B
    }

    mapping(address => Voter) public voters;
    mapping(uint8 => uint) public votes;  // Mapping to store the vote count for each option

    function vote(uint8 _vote) external {
        require(!voters[msg.sender].voted, "Already voted.");
        require(_vote == 1 || _vote == 2, "Invalid vote.");

        voters[msg.sender] = Voter(true, _vote);
        votes[_vote] += 1;
    }

    function getVotes(uint8 _option) external view returns (uint) {
        return votes[_option];
    }
}