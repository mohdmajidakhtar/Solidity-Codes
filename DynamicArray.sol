pragma solidity ^0.5.1;

contract DynamicArray{
    uint24[] numbers;
    
    function getArray(uint24 nums) public returns(uint24[] memory){
        numbers.push(nums);
        return numbers;
    }
    
    function getLength() view public returns (uint){
        return numbers.length;
    }
    
    function deleteArray() public returns(uint24[] memory){
        delete numbers;
        return numbers;
    }
}
