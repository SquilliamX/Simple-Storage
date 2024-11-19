// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// this is a script to deploy the smart contracts in the src folder to a blockchain. 

// we must inport Script.sol to tell foundry that this is a script.
import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

// this file ends with ".s.sol" because that is the naming convention in foundry, scripts should also end in ".s.sol"

// this script will deploy our smart contracts. we should also deploy smart contracts this way.
contract DeploySimpleStorage is Script {
    // all deployments scripts need to have this "run" function because this will be the main function called when deploying the contract.
    function run() external returns (SimpleStorage) {
        // "vm.startBroadcast" is a cheatcode from foundry. it tells foundry "everything after this line should be sent to the rpc"
        vm.startBroadcast();
        // this line says variable name "simplestorage" of type contract SimpleStorage is equal to a new SimpleStorage contract that is now being created.
        SimpleStorage simpleStorage = new SimpleStorage();
        // ^this being in between the broadcasts is telling foundry to send a transaction creating a new contract^
        vm.stopBroadcast();
        // this line will return the address of the newly created simpleStorage contract
        return simpleStorage;
        // to run this, run the command "forge script script/DeploySimpleStorage.s.sol"
        // if you do not define an rpc-URL, then foundry will deploy this to a temporary fake anvil blockchain
    }
}
