//SPDX-License_Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/governance/Governor.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";

contract GovernorContract is Governor, GovernorCountingSimple, GovernorVotes, GovernorVotesQuorumFraction, GovernorTimelockControl {
    uint256 public IvotingDelay;
    uint256 public IvotingPeriod;
    constructor(
        ERC20Votes _token, 
        TimelockController _timelock,
        uint256 _quorumPercentage,
        uint256 _votingPeriod, 
        uint256 _votingDelay
    ) Governor("GovernorContract") 
    GovernorVotes(_token)
    GovernorVotesQuorumFraction(_quorumPercentage)
    GovernorTimelockControl(_timelock){
        IvotingDelay = _votingDelay;
        IvotingPeriod = _votingPeriod;
    }

    function votingDelay() public view override returns(uint256){
        return IvotingDelay;
    }

    function votingPeriod() public view override returns(uint256){
        return IvotingPeriod;
    }

    // Functional Overrides Yet To Be Added
}