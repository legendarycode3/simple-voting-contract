# Simple Voting Smart Contract

## Project Overview
A decentralized voting smart contract that allows candidates to be registered, votes to be cast. Where:
* Any user can register as a voter.
* Voters can vote once per proposal.
* Voters data and voting status and results are tracked transparently off-chain(using event) and on-chain.

## Project Structure

## Key Concepts Applied
* ****Data types:**** Defines the exact nature of data to be stored, ensuring the blockchain knows how to handle, compute, and store it efficiently.
* ****Mapping:**** For tracking who has votered using the address and also using their Id.
* ****Struct:**** Sets the user or voter details in one collection.
* ****Constructor:**** Sets the address that deploys the contract as the owner.
* ****addCandidate(string memory name):**** function that registers new candidates.
* ****vote(uint _candidateId):**** Ensures that voters can only vote once and that votes are cast for valid candidates.
* ****Event logs:****  For tracking key user operation . A off-chain communication tool mechanism to record that something significant happened.
* ****public:****  Managed and executed tasks using public visibility specifier.
* ****msg.sender:**** Recording who owns funds(e.g the owner).



## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

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

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
