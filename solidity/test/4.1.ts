import { expect } from "chai";
import hre from "hardhat";

describe("4.1", function () {
    describe("Test CrowdFunding", function () {
        it("Should fund the contract with at leas the minimum", async function () {
            const CrowdFunding = await hre.ethers.getContractFactory("CrowdFunding");
            const crowdFunding = await CrowdFunding.deploy();
            await expect(crowdFunding.contribute({ value: 100 }))
                .to.be.revertedWith("Contribution too small");
            await crowdFunding.contribute({ value: 1_000_000_000 });
            expect(await crowdFunding.getBalance()).to.equal(1_000_000_000);
        });
    });
});