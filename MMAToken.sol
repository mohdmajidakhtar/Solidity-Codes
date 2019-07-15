pragma solidity ^0.4.20;

contract MMAToken {
    
    /*This creates an array with all balances*/
    mapping (address => uint) balances;
    
    address initialTokenHolder;
    uint constant PRICE = 1 * 1 ether;
    
    constructor(uint initialSupply) public {
        //give all tokens to the creator of the contract
        balances[msg.sender]=initialSupply;
        initialTokenHolder = msg.sender;
    }
    
    //Majid sends 1 Ether to function buyToken()
    
    function buyToken() payable public {
        uint amountOfTokensToSend = msg.value/PRICE;
        balances[msg.sender] += amountOfTokensToSend;
        balances[initialTokenHolder] -= amountOfTokensToSend;
    }
    
    //fetch balance from mapping
    function getBalance(address contract_address) public view returns(uint){
        return balances[contract_address];    
    }
    
    //Send tokens from the message sender's account to the specified account
    function sendTokens(address receiver, uint amount) public {
        //if sender does not have enough money
        if(balances[msg.sender] < amount)
        return; //stop execution
        
        //take funds out of sender's account
        balances[msg.sender] -= amount;
        
        //add those funds to receipient's account
        balances[receiver] += amount;
    }
   
   
}
