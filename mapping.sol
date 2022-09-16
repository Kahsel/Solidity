// SPDX-License-Identifier: MIT
pragma solidity ^0.5.11;

//creating our smart mapping contract
contract myMapping {
    //declaring our mapping variable NAMES using the mapping keyword
    //we use the datatype for (key => value) instead of using the names directly
    mapping (uint => string) public names;

    //creating a constructor that holds our key and value
    constructor() public {
        names[1] = "Isaac Jonah";
        names[2] = "John Moses";
        names[3] = "Collins Dabok";
        //to update names[3]
        //names[3]="Blessing Dalung";
        //to delete names[3];
        //delete names[3];
    }

    //function that get that name at number 1
    function ViewName1() public view returns(string memory){
        return names[1];
    }

    //function that get the name at number 2
    function ViewName2() public view returns(string memory){
        return names[2];
    }

    //function that get the name at number 3
    function ViewName3() public view returns(string memory){
        return names[3];
    }



}