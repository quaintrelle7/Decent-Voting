# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

# Decent-Voting
This is a decentralised application which will let users vote from anywhere, securely over a blockchain network.


## Steps

#### 1. Install Hardhat
    npx hardhat


A Voting application to hold voting in a company for shareholders.

### 2. Set up the hardhat.config.js

- Add the dotenv path
    npm install dotenv
Add the Private Key and API URL from Alchemy

- Set the networks

### 3. Create the deploy.js


### 4. createBytes.js 

This file lets you convert the datatype from string to bytes32
Run:

    node createBytes.js Ana
    
Output:
0x416e610000000000000000000000000000000000000000000000000000000000

Replace "Ana" with the string you want to give, it'll return the Bytes32 format.

### 5. Adding Frontend

Run:

    npx create-react-app frontend

Delete the unnecessary files from React App. Include logos, reportvitals.js, index.html, favicon.ico, robot.txt, etc.

All the abi information, you need is in artifacts>contracts>Voting.sol>Voting.json

Copy the Voting.json in frontend>src>ABI folder.

