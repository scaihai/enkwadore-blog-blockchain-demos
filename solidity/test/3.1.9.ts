import { expect } from "chai";
import hre from "hardhat";

describe("3.1.9", function () {
    async function deployProxyFixture() {
        const [owner, otherAccount] = await hre.ethers.getSigners();

        const MainContract = await hre.ethers.getContractFactory("MainContract");
        const mainContract = await MainContract.deploy();

        return { mainContract, owner };
    }

    describe("Transfer", function () {
        it("Should send Ether to PaymentContract", async function () {
            const { mainContract } = await deployProxyFixture();
            const ethAmount = 1000;
            await mainContract.triggerPayment({ value: ethAmount });

            const balance = await hre.ethers.provider.getBalance(mainContract.getPaymentContract());
            expect(balance).to.equal(ethAmount);
        });
    });
});