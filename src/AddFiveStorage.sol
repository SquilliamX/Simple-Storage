// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

// contracts that inherit other contracts are child-contracts of the parent contract
// so AddFiveStorage would be a child contract of Simple Storage
contract AddFiveStorage is SimpleStorage{
    // we are going to be adding 5 to every number in simple storage.
    // to do this, we need to do overrides
    // to do overrides, we need to use "virtual" and "override"
    // in order for a function to be overwritten, the function being overrided in the parent contract needs to have a "virtual" modifier
    // the function doing the overriding, needs to have a "override" function in the child contract
    function store(uint256 _newNumber) public override{
        myFavoriteNumber = _newNumber + 5;
    }

}