//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract Token{
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 TotalSupply;
    //1000000000000000000000000
    
    mapping(address => uint256) public balanceOf;
        constructor() {
        name = "Krishna";
        symbol = 
        "Kanha";
        decimals = 18;
        TotalSupply = 1000000000000000000000000; 
        balanceOf[msg.sender]=TotalSupply;
    }
    
    event transfereve(address indexed from,address indexed to, uint256 amt);
    
    function transfer(address payable _to,uint256 amount) payable public returns(bool x)
    {
       require(balanceOf[msg.sender] >= amount);
        balanceOf[msg.sender]=balanceOf[msg.sender]-amount;
        balanceOf[_to]+=amount;
        emit transfereve(msg.sender,_to,amount);
        return true;
    }
    
    function transferFrom(address payable _from,address payable _to,uint256 amount) payable public returns(bool x)
    {
       require(balanceOf[msg.sender] >= amount,"Balance is less than the amount to be transacted.");

        balanceOf[msg.sender]=balanceOf[msg.sender]-amount;
        balanceOf[_from]+=amount;
        balanceOf[_from]=balanceOf[_from]-amount;
        balanceOf[_to]+=amount;
        emit transfereve(_from,_to,amount);
        return true;
    }
    
}