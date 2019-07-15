pragma solidity ^0.5.1;

contract ArraysSolidity{
    
    uint8[3] numbers = [10,20,30];
    
    function getArray() public returns(uint8[3] memory){
        numbers[0] = 11;
        numbers[1] = 22;
        numbers[2] = 33;
        return numbers;
    }
    
    function getLength() view public returns(uint){
        return numbers.length;
    }
}
