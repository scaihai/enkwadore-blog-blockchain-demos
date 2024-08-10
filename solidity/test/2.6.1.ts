import {expect} from "chai";
import hre from "hardhat";

describe("2.6.1", function () {
    describe("Test exception handling", function () {
        it("Should fund the contract with at leas the minimum", async function () {
            const ExternalContract = await hre.ethers.getContractFactory("ExternalContract");
            const externalContract = await ExternalContract.deploy();

            const ErrorHandling = await hre.ethers.getContractFactory("ErrorHandling");
            const errorHandling = await ErrorHandling.deploy(externalContract);
            
            const [result, status, reason] = await errorHandling.execute(2);
            expect(status).to.equal("failed");
            const [result2, status2, reason2] = await errorHandling.execute(11);
            expect(status2).to.equal("success");
        });
    });
});