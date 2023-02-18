//SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DAO is Ownable{
    uint256 private value;
    event valueChanged(uint256 newValue);

    function store(uint256 _newValue) public onlyOwner{
        value = _newValue;
        emit valueChanged(_newValue);
    }

    function load() public view returns(uint256){
        return value;
    }
}