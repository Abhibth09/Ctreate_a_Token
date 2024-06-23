## Creating My Own Token

# Project Overview
This project involves creating a custom token using the Solidity programming language. Tokens are essential components of the Ethereum blockchain, representing digital assets that can be transferred and exchanged. By developing your own token, you will gain insight into the principles of blockchain technology, smart contracts, and decentralized finance (DeFi).

# Description
The goal of this project is to create a custom token using Solidity within the Remix Integrated Development Environment (IDE). Remix is a widely-used web-based platform that offers a user-friendly interface for writing, compiling, and deploying smart contracts on the Ethereum blockchain.

# Getting Started
Executing the Program
This project involves the following steps:

# Setting Up Remix
Open the Remix IDE in your web browser by navigating to Remix.
Start a new file in the Remix code editor and copy the following code into the file:
solidity

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    
    string public tokenName = "MyToken";    
    string public tokenAbbrv = "MTK";       
    uint public totalSupply = 0;           

    mapping(address => uint) public balances;

    function mint(address _to, uint _value) public {
        totalSupply += _value;               
        balances[_to] += _value;             
    }

    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Balance too low to burn"); 
        totalSupply -= _value;               
        balances[_from] -= _value;           
    }
}
# Compiling the Contract
 1. Use the Remix compiler panel to compile your token contract.
 2. Select the appropriate compiler version (0.8.18).

# Deploying the Contract
 1. Switch to the "Deploy & run transactions" tab in Remix.
 2. Deploy the compiled contract by clicking the "Deploy" button.

 # Interacting with the Token
 1. Use the Remix IDE to interact with the deployed token contract.
 2. Use the Adresstobalance, mint, and burn functions in the "Deployed Contracts" section to   
    perform actions such as transferring tokens, checking balances, and burning tokens.
 3. Input the address and value, then click the corresponding function buttons to execute your 
    contract.

# Authors

 Kumar Abhishek Anand

# License
This project is licensed under the MIT License. The license text is included in the SPDX-License-Identifier comment at the beginning of the contract. For more details, see the LICENSE.md file.
