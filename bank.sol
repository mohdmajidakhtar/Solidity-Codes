pragma solidity ^0.5.1;

contract bank{
    mapping(address => uint256) public accounts;
    
    function deposit(uint money) public{
        accounts[msg.sender] += money;
    }
    
    function withdraw(uint money) public{
        require(accounts[msg.sender] >= money);
        accounts[msg.sender] -= money;
    }
}
