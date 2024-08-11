import { expect } from "chai";
import hre from "hardhat";

describe("3.1.13", function () {

    describe("Basic Inheritance", function () {
        it("Should inherit setName() from parent contract", async function () {
            const Child1 = await hre.ethers.getContractFactory("Child1");
            const child1 = await Child1.deploy();

            await child1.setName("Alice");
            expect(await child1.getName()).to.equal("Alice");
        });
    });

    describe("Multiple Inheritance", function () {
        it("Should inherit functions from the two parent contracts", async function () {
            const C = await hre.ethers.getContractFactory("C");
            const c = await C.deploy();

            expect(await c.sayHelloFromBoth()).to.equal("Hello from A and Hello from B");
        });
    });

    describe("Function Overriding", function () {
        it("Should override the function from the parent contract", async function () {
            const Parent2 = await hre.ethers.getContractFactory("Parent2");
            const parent2 = await Parent2.deploy();
            expect(await parent2.greet()).to.equal("Hello from Parent");

            const Child2 = await hre.ethers.getContractFactory("Child2");
            const child2 = await Child2.deploy();
            expect(await child2.greet()).to.equal("Hello from Child");
        });
    });

    describe("Constructors", function () {
        it("Should call the constructor of the parent contract", async function () {
            const Child3 = await hre.ethers.getContractFactory("Child3");
            const child3 = await Child3.deploy("Alice");
            expect(await child3.name()).to.equal("Alice");
        });
    });

});