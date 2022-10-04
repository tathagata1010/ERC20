const chai = require("chai");
const BN = require("bn.js");
const { expect } = require("chai");
chai.use(require("chai-bn")(BN));

// Enable and inject BN dependency

describe("Demo Contract", () => {
  beforeEach(async () => {
    democon = await ethers.getContractFactory("Demo");
    demodeploy = await democon.deploy("Krishna", "Madhav", 100000);
    await demodeploy.deployed();
    //   beforeEach();
  });
  it("Check name,symbol,noft", async () => {
    expect(await demodeploy.name()).to.equal("Krishna");
  });
});
// expect(
//   await demodeploy.ShowSymbol().to.equal("Madhav"),
//   "Wrong symbol said"
// );
// expect(await demodeploy.ShowNumberOfTokens().to.equal(100000));
