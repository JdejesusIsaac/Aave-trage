# Aave-trage
Implementing, Testing and Deploying "Aave-trage -a smart contract that identifies and executes rate arbitrage opportunities across Aave v2 markets.


Aave Flash Loan Truffle Box

This Truffle box comes with everything you need to start developing on flash loans

Installation and Setup

Install Truffle globally, if not already installed.
npm install -g truffle@latest
Note: there is an issue with some older Truffle versions, e.g. v.5.1.25. This truffle box is confirmed working with the latest version (Truffle v5.1.32)
Download the box.
truffle unbox aave/flashloan-box
Rename the env file to .env and edit the following values in the file:
Sign up for Infura (or a similar provider) and replace YOUR_INFURA_KEY with an API key for your project (this is called Project ID in the Infra dashboard).
Replace YOUR_ACCOUNT_KEY_FOR_DEPLOYMENT with the private key of the ethereum account you will be using to deploy the contracts. This account will become the owner of the contract.
Ensure your ethereum account has some ETH to deploy the contract.
In your terminal, navigate to your repo directory and install the dependencies (if not already done):
npm install
In the same terminal, replace NAME_OF_YOUR_NETWORK with either kovan, ropsten, or mainnet (depending on where you want to deploy the contract):
truffle console --network NAME_OF_YOUR_NETWORK
You are now connected to the network you chose. In the same terminal window:
migrate --reset
After a few minutes, your contract will be deployed on your chosen network.
If you have not added any profitable logic to Flashloan.sol line 23, then you will need to fund your contract with the desired asset.
See our documentation for token address and faucets.
Call your contract's flashloan function within the truffle console, replacing RESERVE_ADDRESS with the reserve address found in our documentation:
let f = await Flashloan.deployed()
await f.flashloan(RESERVE_ADDRESS)
if the above operation takes an unreasonably long time or timesout, try CTRL+C to exit the Truffle console, repeat step 5, then try this step agin. You may need to wait a few blocks before your node can 'see' the deployed contract.
If you've successfully followed the above steps, then congratulations, you've just made a flash loan.
For reference, here is an example transaction that followed the above steps on Ropsten using Dai.
For reference, here is an example transaction that followed the above steps on Ropsten using ETH.
