pragma solidity ^0.5.1;

contract MemoryAndStorage{
    
    uint[20] arr;

    function callfunc() public{
        change1(arr);
        change2(arr);
    }    
    
    function change1(uint[20] storage x) internal{
        x[0] = 4;
    }

    function change2(uint[20] memory x) internal pure{
        x[0] = 5;
    }    
}
