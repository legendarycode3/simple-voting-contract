# 🗳️ Simple Voting Smart Contract

## Project Overview
A decentralized voting smart contract that allows candidates to be registered, votes to be cast. Where:
* Any user can register as a voter.
* Voters can vote once per voters cast.
* Voters data and voting status and results are tracked transparently off-chain(using event) and on-chain.

##  📌 Features
* ****Candidate Registration:**** Only the owner can add candidates.
* ****Secure Voting:**** Prevents double voting using address tracking.
* ****Results Transparency:****  View candidate details and total votes.

## 🧠 Key Concepts Applied
* ****Data types:**** Defines the exact nature of data to be stored, ensuring the blockchain knows how to handle, compute, and store it efficiently.
* ****Mapping:**** For tracking who has votered using the address and also using their Id.
* ****Struct:**** Sets the user or voter details in one collection.
* ****Constructor:**** Sets the address that deploys the contract as the owner.
* ****Event logs:****  For tracking key user operation . A off-chain communication tool mechanism to record that something significant happened.
* ****public:****  Managed and executed tasks using public visibility specifier.
* ****msg.sender:**** Recording who owns funds(e.g the owner).
  
## 📂 Project Structure (Files)
* ****`Voting.sol`:**** Core contract implementing addCandidate and vote functions. 
* ****`Voting.t.sol`:**** Unit Test (suite) containing tests to validate contract functionalities.

## Technology Stack (Technologies Used)
* ****Solidity**** - The programming language for writing the Smart contracts.
* ****RemixIDE:**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development. 
* ****Foundry(forge, cast, anvil)**** - Development framework and testing suite
* ****Visual Studio Code**** Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.


## Getting Started

### Prerequisites
* Solidity Compiler, Version ^0.8.18 or higher.
* `Remix IDE` or `Foundry Development Kit`

### Recommendation (For Beginners)
**NOTE (Use Remix IDE, for quick prototyping):** You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the code works while trying to build yours as you keep building.

## Usage
### Building the Project (Using Remix IDE):
1. Copy the core smart contract file code `Voting.sol` to Remix IDE (a browser based IDE, for quick prototyping).
2. Create a new file for the project on your Remix IDE and paste , to learn and build along faster.
3. And then Compile the smart contract file you have created on Remix IDE.

### Building the Project (Using Foundry Development Kit ) - only if you are good using foundry kit
1. Clone the repository:
    ```shell
    git clone https://github.com/legendarycode3/simple-voting-contract 
  ```

2. Navigate to the directory you created and cloned the file to:
  ```shell
   cd simple-voting-contract
  ``` 

3. Compile the smart contract: </br>
     ```shell
    forge build
  ```

### Testing the contract (Using Foundry Development Kit ) 

Runing all tests:
   ```shell
    forge test
   ```

Runing specific test:
   ```shell
    forge test --mt testFunctionName
   ```


## 📋Contract Details
### Functions:
* ****`addCandidate(string memory name)`:**** Function that registers new candidates.
* ****`vote(uint _candidateId)`:**** Function that Ensures that voters can only vote once and that votes are cast for valid candidates.

###  Variables:
* ****`i_owner`****: Immutable variable storing the owner’s address.
* ****`candidatesCount`****: Variable that tracks the total number of candidates registered in the contract.
* ****`voters`****: Variable that tracks who has voted by address.
* ****`candidates`****:  Variable that tracks who has voted by ID.

## Usage Guide (How it works) 
1. ****Compile****: Compile the contract.
2. ****Deployment****: Add candidates using addCandidate("Name") represented in an array format and  deploy the VotingSystem contract (deployer becomes owner). You can only deploy only when you added atleast a name , which is specified on the contructor which must run first .
3. ****Voting****:  Users call vote(candidateId) to cast their vote. Each address can vote only once.
4. ****addCandidate****: New candidate can be added , after the initial candidate that was added before deployment commenced.

## Why This Matters (Voting Smart Contract)
Voting smart contracts are crucial in the Web3 blockchain ecosystem because they:
1. Replace centralized, trust-based decision-making with decentralized, automated, and tamper-proof governance.
2. Enable Decentralized Autonomous Organizations (DAOs) and blockchain protocols to operate without intermediaries, allowing token Decentralized Autonomous Organizations (DAOs) and blockchain protocols to operate without intermediaries, allowing token holders to directly influence protocol developments, funding, and rule changes. </br>
****NOTE:**** This project teaches ,  foundational concepts for Decentralized Governance Application and real-world On-Chain Voting System patterns.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```


## Author
Built with ❤️ by [@legendarycode3](https://github.com/legendarycode3/)  </br>
Part of my  `60 Days of Solidity Challenge`

## 🤲 If you find this project helpful, please give it a star and link back to this repository.


