import { expect } from "chai";
import hre from "hardhat";
import { time } from "@nomicfoundation/hardhat-toolbox/network-helpers";

describe("4.2", function () {
    describe("Test TimeLock", function () {
        it("Should  release funds at the right time", async function () {
            const [owner] = await hre.ethers.getSigners();
            const TimeLock = await hre.ethers.getContractFactory("TimeLock");
            
            const timeLock = await TimeLock.deploy(owner.address,
                { value: 1_000_000_000 } // 1 Gwei
            );

            expect(await timeLock.getBalance()).to.equal(1_000_000_000);
            await(expect(timeLock.release())).to.be.revertedWith("Current time is before release time");

            const releaseTime = (await time.latest()) + 3600; // + one hour
            await time.increaseTo(releaseTime);
            await timeLock.release();
            expect(await timeLock.getBalance()).to.equal(0);
        });
    });
});