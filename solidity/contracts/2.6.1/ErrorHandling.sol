// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExternalContract {
    function riskyFunction(uint256 value) external pure returns (uint256) {
        require(value > 10, "Value must be greater than 10");
        return value * 2;
    }
}

contract ErrorHandling {
    ExternalContract externalContract;

    constructor(address _externalContractAddress) {
        externalContract = ExternalContract(_externalContractAddress);
    }

    function execute(uint256 value) public view returns (uint256, string memory, string memory) {
        try externalContract.riskyFunction(value) returns (uint256 result) {
            return (result, "success", "");
        } catch Error(string memory reason) {
            return (0, "failed", reason);
        } catch (bytes memory /*lowLevelData*/) {
            return (0, "failed", "Unknown error");
        }
    }
}
