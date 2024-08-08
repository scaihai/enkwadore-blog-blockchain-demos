import { expect } from "chai";
import hre from "hardhat";

describe("3.1.6", function () {
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

  describe("Upgrade", function () {
    it("Should upgrade the implementation contract", async function () {
      const { proxy, impl2 } = await deployProxyFixture();
      let x = await proxy.getX();

      const newValue = 10;
      await expect(proxy.setX(newValue)).not.to.be.reverted;
      x = await proxy.getX();
      expect(x).to.equal(newValue);

      await proxy.upgradeTo(impl2.getAddress()); // multiplies argument by 2
      await expect(proxy.setX(newValue)).not.to.be.reverted;
      x = await proxy.getX();
      expect(x).to.equal(newValue * 2);
    });
  });
});