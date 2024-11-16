// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    // left: contract and array, right: variable name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        // "SimpleStorage" is an array of type SimpleStorage contracts, "newSimpleStorageContract" is a variable that deploys new SimpleStorage contracts
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        // push the contract to the array
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

        // when this function is called, a new contract will be deployed and the position of the new contract will be saved into the array in sequential order
    }

    // function takes two variables "_simpleStorageIndex" and "_newSimpleStorageNumber"
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    // in order to refer to a contract, you are going to need the address and the ABI
    // ABI = Application Binary Interface
    
    // variable mySimpleStorage (of type contract SimpleStorage(mySimpleStorage is a contract of type SimpleStorage, and its variable name is mySimpleStorage)) is getting the index number from the array of listOfSimpleStorageContracts
    // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];

    // storing the number the user inputs into the variable _newSimpleStorageNumber, this way when the index of the contract is called(in sfGet), it will reveal the number stored by the user.
    // mySimpleStorage.store(_newSimpleStorageNumber);

    // this line works the same as the commented out lines above in this function:
    listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    // this is getting the index number from the array of "listOfSimpleStorageContracts" and storing the "_newSimpleStorageNumber" that the user inputs
    }

    // function only reads and reveals data since it has the "view" and "returns"
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
    // variable "mySimpleStorage" is getting the index number from the array of listOfSimpleStorageContracts
    // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
    // returning the stored value(index and stored number) to show to whoever calls this function
    // return mySimpleStorage.retrieve();

    // this line works the same as the commented out lines above in this function:
    return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    // the line above returns the index number and stored number of the contract from the array
    }
}
