//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract Demo{
    uint256 public numberOfTokens;
    string public name;
    string public symbol;
    constructor(string memory _name,string memory _symbol,uint256 _noft)
    {
      name=_name;
      symbol=_symbol;
      numberOfTokens=_noft;
    }
    function ShowName() public view returns(string memory){
        return name;
    }

    function ShowSymbol() public view returns(string memory){
        return symbol;
    }

    function ShowNumberOfTokens() public view returns(uint256)
    {
        return numberOfTokens;
    }
}