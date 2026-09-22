// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract GoldPriceContract{
    AggregatorV3Interface internal priceFeed;
    //The Chainlink price feed contract address
    constructor() public  {
        priceFeed = AggregatorV3Interface(0xC5981F461d74c46eB4b0CF3f4Ec79f025573B0Ea);
    }
    function getLatestPrice() public view returns (uint256){
        (,int answer,,,) = priceFeed.latestRoundData();
        return uint(answer)*1e10;
    }
}
