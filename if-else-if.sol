// SPDX-License-Identifier: MIT
pragma solidity ^0.5.11;
//QUestion: create a contract that will accept a user input.
//if input value is in a range input>=0 AND <= 10, 1input>=1 AND <= 20, input>=21 and <= 30, input >=31 upward

//expected output should output: the input value is in range <....>


//declaring our contract myIfElseIf
contract myIfElseIf {
    //declaring our state variable for the INPUT value
    //and also for the OUTPUT
    uint input;
    string output;

    //declaring a function to set our input values
    //it will also contain our if-else-if outputs
    function set(uint _input) public {
        input = _input;
        //for range 0 to 10
        if (input >= 0 && input <=10){
            output = 'The input value is in range 0 to 10';
        }
        //for range 11 to 20
        else if(input >=11 && input <= 20){
            output = 'The input value is in range 11 to 20';
        }
        //for range 21 to 30
        else if(input >= 21 && input <= 30){
            output = 'The input value is in range 21 to 30';
        }
        //for range 31 upward
        else{
            output = 'The input is 31 upward';
        }

    }
    
    //creating a function that gets our if-else-if outputs

    function getResult() public view returns(string memory){
        return output;
    }
}