// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

 import {SimpleStorage} from "./SimpleStorage.sol";


// inhertence from SimpleStorage contract

 contract AddFiveStorage is SimpleStorage{
    // + 5
    // overides the store function from SimpleStoract contract
    // virtual override

    function store(uint256 _newNumber) public override {
        myfavoriteNumber = _newNumber +5;
    }
 }
