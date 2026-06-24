// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {}
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {}
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
    }

}