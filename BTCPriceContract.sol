// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract BTCPriceContract{
    AggregatorV3Interface internal priceFeed;
    constructor() public payable{
        priceFeed = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
    }
    function getLatestBTCPrice() public view returns(uint256){
        (,int answer,,,) = priceFeed.latestRoundData();
        return uint(answer);
    }
}