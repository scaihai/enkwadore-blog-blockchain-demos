import { expect } from "chai";
import hre from "hardhat";

describe("3.1.7", function () {
    async function deployProxyFixture() {
        const [owner, otherAccount] = await hre.ethers.getSigners();

        const SimpleToken = await hre.ethers.getContractFactory("SimpleToken");
        const simpleToken = await SimpleToken.deploy();

        const BalanceChecker = await hre.ethers.getContractFactory("BalanceChecker");
        const balanceChecker = await BalanceChecker.deploy();

        return { simpleToken, balanceChecker, owner };
    }

    describe("Balance Checker", function () {
        it("Should check the balance of an account", async function () {
            const { simpleToken, balanceChecker, owner } = await deployProxyFixture();
            const balance = await balanceChecker.checkBalance(simpleToken, owner);
            expect(balance).to.equal(1000);
        });
    });
});