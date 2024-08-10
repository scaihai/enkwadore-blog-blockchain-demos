import { expect } from "chai";
import hre from "hardhat";

describe("3.1.11", function () {
  async function deployProxyFixture() {
    const [owner] = await hre.ethers.getSigners();

    const FunctionTypesExample = await hre.ethers.getContractFactory("FunctionTypesExample");
    const functionTypesExample = await FunctionTypesExample.deploy();
    return { functionTypesExample, owner };
  }

  describe("Call a function type", function () {
    it("Should add two integers", async function () {
      const { functionTypesExample } = await deployProxyFixture();
      let sum = await functionTypesExample.executeAddition(1, 2);
      expect(sum).to.equal(3);
    });
  });
});