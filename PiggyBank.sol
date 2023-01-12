// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PiggyBank {
    constructor() payable {}
    receive() payable external {}
    function withdraw() external {
        address payable Receiver = payable(msg.sender);
       Receiver.transfer(address(this).balance); 
    }
}