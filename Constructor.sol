// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract A {
    int public I = 1234;
    uint public U;
    string public S = 'Hello, Ethereun';
}

contract B {
    int public I = 1234;
    uint public U;
    string public S = 'Hello, Ethereun';
    constructor(int _I, uint _U, string memory _S){
        I = _I;
        U = _U;
        S = _S;
    }
}