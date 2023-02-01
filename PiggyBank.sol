// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PiggyBank {
    address public owner;
    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can call this function");
        _;
    }
    constructor() payable {
        owner = msg.sender;
    }
    receive() payable external {}
    function withdraw() onlyOwner external {
        address payable Receiver = payable(msg.sender);
       Receiver.transfer(address(this).balance); 
    }
}