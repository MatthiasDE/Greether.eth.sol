pragma solidity ^0.8.13;
/* SPDX-License-Identifier: GPL-3.0-only */

contract Greeter {
    /* Define variable greeting of the type string */
    string public yourName;

    /* This runs when the contract is executed */
    constructor() {
        yourName = "Hello World!";
    }

    function setName(string memory name) public {
        yourName = string(abi.encodePacked("Hello ", name, "!"));
    }

    function hello() view public returns (string memory) {
        return yourName;
    } 
}