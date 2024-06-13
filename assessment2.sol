// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store token details
    string public tokenName = "MyToken";    
    string public tokenAbbrv = "MTK";       
    uint public totalSupply = 0;            

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Function to mint new tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value;              
        balances[_to] += _value;            
    }

    // Function to burn existing tokens
    function burn(address _from, uint _value) public 
        require(balances[_from] >= _value, "Balance too low to burn"); 
        totalSupply -= _value;             
        balances[_from] -= _value;           
    }
}
