import { expect } from "chai";
import hre from "hardhat";

describe("3.2", function () {
    async function deployProxyFixture() {
        const [owner, otherAccount] = await hre.ethers.getSigners();

        const ImplementationV1 = await hre.ethers.getContractFactory("ImplementationV1");
        const implementationV1 = await ImplementationV1.deploy();

        const Proxy = await hre.ethers.getContractFactory("Proxy");
        const proxy = await Proxy.deploy(implementationV1);

        const Impl2 = await hre.ethers.getContractFactory("ImplementationV2");
        const impl2 = await Impl2.deploy();
        return { proxy, impl2, owner, otherAccount };
    }

    describe("MemoryExample Tests", function () {
        it("Should sum the integer array argument", async function () {
            const MemoryExample = await hre.ethers.getContractFactory("MemoryExample");
            const memoryExample = await MemoryExample.deploy();

            const integers = [1, 2, 3, 4, 5];
            const sum = await memoryExample.getSum(integers);
            await expect(sum).to.equal(15);
        });
    });

    describe("CalldataExample Tests", function () {
        it("Should sum the integer array argument", async function () {
            const CalldataExample = await hre.ethers.getContractFactory("CalldataExample");
            const calldataExample = await CalldataExample.deploy();

            const integers = [1, 2, 3, 4, 5];
            const sum = await calldataExample.processData(integers);
            await expect(sum).to.equal(15);
        });
    });
});