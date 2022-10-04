require("@nomiclabs/hardhat-waffle");
import { Compiler } from "@0x/sol-compiler";

// require("@nomicfoundation/hardhat-chai-matchers");
// require("@nomicfoundation/hardhat-toolbox");

//  @type import('hardhat/config').HardhatUserConfig *
module.exports = {
  solidity: "0.8.9",
};

// Go to https://www.alchemyapi.io, sign up, create
// a new App in its dashboard, and replace "KEY" with its key
//const ALCHEMY_API_KEY = "K4O4QtzUWpSa7ipBFfB-AHpMO6JyKcLL";

// Replace this private key with your Goerli account private key
// To export your private key from Metamask, open Metamask and
// go to Account Details > Export Private Key
// Beware: NEVER put real Ether into testing accounts
// const GOERLI_PRIVATE_KEY =

// module.exports = {
//   solidity: "0.8.9",
//   networks: {
//     hardhat: {
//       forking: {
//         url: "https://eth-mainnet.alchemyapi.io/v2/eS_eQwvMYA7DBBcWwAN27wVhlm862H9g",
//       },
//     },
//   },
// };
