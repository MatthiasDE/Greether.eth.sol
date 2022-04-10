pragma solidity ^0.8.13;
    /* SPDX-License-Identifier: MIT */

//Imagine a biginteger that the whole world could share
contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() view public returns (uint) {
        return storedData;
    }

    function increment (uint n) public {
        storedData = storedData + n;
    }

    function decrement (uint n) public {
        storedData = storedData - n;
    }
}