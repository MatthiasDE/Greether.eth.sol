pragma solidity ^0.4.26;
/* SPDX-License-Identifier: GPL-3.0-only */

contract Bidder {
    string public name;
    uint public bidAmount = 20000;
    bool public eligible;
    uint constant minBid = 1000;

    function setName(string nm) public {
        name = nm;
    }

    function setBidAmount(uint x) public {
        bidAmount = x;
    }

    function determineEligibility() public {
        if (bidAmount >= minBid) eligible = true;
        else eligible = false;
    }
}