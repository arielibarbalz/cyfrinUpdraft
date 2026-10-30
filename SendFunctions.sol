// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SendFunctions {
    function callAmountTo(address payable _to, uint256 _amount) public{
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed transaction");
        }
        receive() external payable { }
} 