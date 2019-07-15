pragma solidity ^0.5.1;

contract structBank{
    
    struct Account{
        address addr;
        uint amount;
    }
    
    Account public acc1 = Account({addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a, amount: 50});
    Account public acc2 = Account({addr: 0xdD870fA1b7C4700F2BD7f44238821C26f7392148, amount: 70});
    
    function addMoney1(uint money) public{
        acc1.amount += money;
    }
    
    function withdrawMoney1(uint money) public{
        if(acc1.amount <= money){
            revert("You dont have that much of money to withdraw");
        }
        acc1.amount -= money;
    }

    function addMoney2(uint money) public{
        acc2.amount += money;
    }
    
    function withdrawMoney2(uint money) public{
        assert(acc2.amount >= money);
        acc2.amount -= money;
    }
    
    function transferMoney(uint money) public{
        require(acc1.amount >= money, "You dont have that much money");
        acc1.amount -= money;
        acc2.amount += money;
    }
}
