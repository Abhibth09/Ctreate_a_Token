# Ctreate_a_Token
# Public Variables: 
The contract defines three public variables: tokenName, tokenAbbrv, and totalSupply.
# Mapping: 
The mapping balances keeps track of the balance of each address.
# Mint Function:
The mint function increases both the totalSupply and the balance of the specified address.
# Burn Function:
The burn function decreases both the totalSupply and the balance of the specified address,
ensuring that the balance is sufficient before burning tokens using a require statement.
