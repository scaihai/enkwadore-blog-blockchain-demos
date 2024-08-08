// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    enum Stage { Init, Reg, Vote, Done }
    Stage public stage = Stage.Init;

    function advanceStage() public {
        require(stage != Stage.Done, "Voting has ended");
        stage = Stage(uint(stage) + 1);
    }

    function getStage() public view returns (Stage) {
        return stage;
    }
}