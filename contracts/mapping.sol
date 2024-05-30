// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract ERC20Token {
    address public banker = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
   
    mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
        
        require(msg. sender == banker, "not banker");
        balances[owner] = amount;
    
    }

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        balances[sender] -= amount;   // deduct/debit the sender's balance
        balances[receiver] += amount; // credit the reciever's balance
    }
}