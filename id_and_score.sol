// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract class {
    mapping(uint => uint) Student;
    function update(uint id, uint score) public {
        Student[id] = score;
    }
    function get(uint id) public view returns (uint){
        return Student[id];
    }
}