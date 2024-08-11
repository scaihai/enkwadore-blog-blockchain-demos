import { expect } from "chai";
import hre from "hardhat";

describe("3.1.15", function () {
    describe("Implementing an Interface", function () {
        const INITIAL_SUPPLY = 1000;

        async function deployMyTokenFixture() {
            const [owner, otherAccount] = await hre.ethers.getSigners();
            
            const MyToken = await hre.ethers.getContractFactory("MyToken2");
            const myToken = await MyToken.deploy(INITIAL_SUPPLY);

            return { myToken, owner, otherAccount };
        }

        it("Should set the total supply", async function () {
            const { myToken } = await deployMyTokenFixture();
            expect(await myToken.totalSupply()).to.equal(INITIAL_SUPPLY);
        });

        it("Should set the right balance for owner", async function () {
            const { myToken, owner } = await deployMyTokenFixture();
            expect(await myToken.balanceOf(owner)).to.equal(INITIAL_SUPPLY);
        });

        it("Should set the right balance for other account", async function () {
            const { myToken, otherAccount } = await deployMyTokenFixture();
            expect(await myToken.balanceOf(otherAccount)).to.equal(0);
            await myToken.transfer(otherAccount.address, 100);
            expect(await myToken.balanceOf(otherAccount)).to.equal(100);
        });

        it("Should revert if trying to transfer more than the balance", async function () {
            const { myToken, owner, otherAccount } = await deployMyTokenFixture();
            await expect(myToken.transfer(otherAccount.address, 1001)).to.be.revertedWith("Insufficient balance");
        });
    });
});