pragma solidity ^0.5.1;

contract GettersAndSetters{
    
    string private messageValue = "First Message";
    
    function getMessage() view public returns(string memory){
        return messageValue;
    }
    
    function setMessage(string memory newMessage) public{
        messageValue = newMessage;
    }
}
