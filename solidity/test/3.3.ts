import { expect } from "chai";
import hre from "hardhat";

describe("3.3", function () {

    describe("Test Mapping Types", function () {
        it("Should record a vote", async function () {
            const Voting = await hre.ethers.getContractFactory("Voting2");
            const voting = await Voting.deploy();

            await voting.vote(1);
            const voteCount1 = await voting.getVotes(1);
            expect(voteCount1).to.equal(1);
            const voteCount2 = await voting.getVotes(2);
            expect(voteCount2).to.equal(0);
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