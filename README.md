# Simple Voting Smart Contract

## Project Overview
A decentralized voting smart contract that allows candidates to be registered, votes to be cast. Where:
* Any user can register as a voter.
* Voters can vote once per voters cast.
* Voters data and voting status and results are tracked transparently off-chain(using event) and on-chain.

## 📂 Project Structure (Files)
* ****`Voting.sol`:**** Core contract implementing addCandidate and vote functions. 
* ****`Voting.t.sol`:**** Unit Test (suite) containing tests to validate contract functionalities.

## 🧠 Key Concepts Applied
* ****Data types:**** Defines the exact nature of data to be stored, ensuring the blockchain knows how to handle, compute, and store it efficiently.
* ****Mapping:**** For tracking who has votered using the address and also using their Id.
* ****Struct:**** Sets the user or voter details in one collection.
* ****Constructor:**** Sets the address that deploys the contract as the owner.
* ****Event logs:****  For tracking key user operation . A off-chain communication tool mechanism to record that something significant happened.
* ****public:****  Managed and executed tasks using public visibility specifier.
* ****msg.sender:**** Recording who owns funds(e.g the owner).

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
  and then,
```shell
    cd simple-voting-contract 
  ```
 
2. Compile the smart contract:
     ```shell
    forge build
  ```

### Testing the contract ((Using Foundry Development Kit )
Runing all tests:
   
  


## 📋Contract Details
### Functions:
* ****`addCandidate(string memory name)`:**** Function that registers new candidates.
* ****`vote(uint _candidateId)`:**** Function that Ensures that voters can only vote once and that votes are cast for valid candidates.

###  Variables:
* ****`i_owner`****: Immutable variable storing the owner’s address.
* ****`candidatesCount`****: Variable that tracks the total number of candidates registered in the contract.
* ****`voters`****: Variable that tracks who has voted by address.
* ****`candidates`****:  Variable that tracks who has voted by ID.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

## Usage

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

### Help

```shell
$ forge --help
```
