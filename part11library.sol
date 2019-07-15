pragma solidity ^0.5.1;

import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";

contract part11library{
    mapping(address => uint256) public accounts;
    using SafeMath for uint256;
    
    function deposit() payable public{
        require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
        accounts[msg.sender] = accounts[msg.sender].add(msg.value);
    }
    
    function withdraw(uint money) public{
        require(accounts[msg.sender] >= money);
        accounts[msg.sender] = accounts[msg.sender].sub(money);
        
    }
}
