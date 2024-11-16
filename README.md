# SimpleStorage Smart Contract

A foundational Ethereum smart contract demonstrating core blockchain development concepts using the Foundry framework.

## Project Overview

SimpleStorage is a blockchain application that implements basic storage functionality on the Ethereum network. The project showcases best practices in smart contract development, testing, and deployment using modern Web3 tools.

### Key Features

- Secure storage and retrieval of numerical values
- Dynamic person management system with associated favorite numbers
- Efficient name-to-number mapping functionality
- Comprehensive testing suite
- Automated deployment scripts

## Technical Stack

- Solidity ^0.8.18
- Foundry Framework
- Forge Standard Library
- GitHub Actions CI/CD

## Smart Contract Architecture

The core contract (`SimpleStorage.sol`) implements several key features:

1. **State Management**

   - Dynamic storage of favorite numbers
   - Structured person data using custom types
   - Efficient mapping system for name-to-number relationships

2. **Data Structures**
   - Custom Person struct implementation
   - Dynamic arrays for scalable data storage
   - Gas-optimized mapping for quick data retrieval

## Development and Testing

The project uses Foundry's robust testing framework and includes:

- Automated CI/CD pipeline
- Comprehensive test coverage
- Multiple environment support
- Gas optimization checks

## Deployment

The project includes a deployment script (`DeploySimpleStorage.s.sol`) that handles:

- Automated contract deployment
- Environment-specific configurations
- Transaction broadcasting
- Deployment verification

## Security Features

- MIT License compliance
- Solidity version control
- Access control mechanisms
- Gas optimization

## Getting Started

1. Clone the repository

2. Install Dependencies
3. Forge Install

4. Deploy with `forge script script/DeploySimpleStorage.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key>`
