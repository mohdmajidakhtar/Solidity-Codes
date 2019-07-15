pragma solidity ^0.5.1;

contract ownModifier{
    address payable onlyowner;
    
    constructor() public{
        onlyowner = msg.sender;
    }
    
    modifier onlySeller{
        require(msg.sender == onlyowner);  
        _;
    }
}

contract derived is ownModifier{
    
    function abort() public onlySeller{
        selfdestruct(onlyowner);
    }
}
