import { expect } from "chai";
import hre from "hardhat";

describe("3.2.1", function () {

    describe("Test Dynamic Array", function () {
        it("Should insert an element into the array", async function () {
            const DynamicArrayExample = await hre.ethers.getContractFactory("DynamicArrayExample");
            const dynamicArrayExample = await DynamicArrayExample.deploy();

            await dynamicArrayExample.addElement(1);
            const element = await dynamicArrayExample.getElement(0);
            expect(element).to.equal(1);
            
            await dynamicArrayExample.removeLastElement();
            await expect(dynamicArrayExample.getElement(0)).to.be.reverted;
        });
    });

    describe("Test Memory Array", function () {
        it("Should double the integer array argument", async function () {
            const MemoryArray = await hre.ethers.getContractFactory("MemoryArray");
            const memoryArray = await MemoryArray.deploy();

            const integers = [1, 2, 3];
            const sum = await memoryArray.doubleNumbers(integers);
            for (let i = 0; i < integers.length; i++) {
                expect(sum[i]).to.equal(integers[i] * 2);
            }
        });
    });

    describe("Test Array slice", function () {
        it("Should return the slice of the array", async function () {
            const ArraySliceExample = await hre.ethers.getContractFactory("ArraySliceExample");
            const arraySliceExample = await ArraySliceExample.deploy();

            const integers = [1, 2, 3, 4, 5];
            const slice = await arraySliceExample.sliceArray(integers, 1, 3);
            expect(slice[0]).to.equal(2);
            expect(slice[1]).to.equal(3);
        });
    });
});