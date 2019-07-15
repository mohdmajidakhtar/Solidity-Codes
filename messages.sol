pragma solidity ^0.5.1;

contract messages{
    
    address owner;
    string[] message;
    
    constructor () public{
        owner = msg.sender;
    }
    
    function addMessage(string memory newMessage) public{
        require(msg.sender == owner);
        message.push(newMessage);
    }
    
    function lengthcount() view public returns (uint){
        return message.length;
    } 
    
    function getMessage(uint index) view public returns(string memory){
        return message[index];
    } 
}
