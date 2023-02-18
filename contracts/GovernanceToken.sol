//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes{
    uint256 public maxSupply = 1000000000000000000000000; // 10 Million
    constructor() ERC20("Buidler Coin","BDL") ERC20Permit("Buidler Coin") {
        _mint(msg.sender, maxSupply);
    }

    function _afterTokenTransfer(address _from, address _to, uint256 _amount) internal override{
        super._afterTokenTransfer(_from, _to, _amount);
    }

    function _mint(address _to, uint256 _amount) internal override{
        super._mint(_to,_amount);
    }

    function _burn(address _account, uint256 _amount) internal override{
        super._burn(_account, _amount);
    }
}

