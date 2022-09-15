pragma solidity ^0.5.11;

//creating the contract <name>
contract calc{
    //creating the state variables which will be ccall when needed
    uint num1;
    uint num2;
    //state variable for our various function operators
    uint add; 
    uint div;
    uint mul; 
    uint sub; 
    uint raise; 
    uint remainder;

    //function to collect data as well as create instance of our state variable
    //assigning our input values to our operators variables
    function colData(uint _num1, uint _num2) public {
        num1 = _num1;
        num2 = _num2;     
        //operator variables
        mul = num1 * num2;
        add = num1 + num2;
        sub = num1 - num2;
        div = num1 / num2;
        raise = num1 ** num2;
        remainder = num1 % num2;
    }

    //function to view our results for various operators

    //to return multiplication
    function mulitply() public view returns(uint) {
        return mul;
    }
    //to return addition
    function addition() public view returns(uint) {
        return add;
    }
    //to return subtraction
    function suntraction() public view returns(uint) {
        return sub;
    }
    //to return divition
    function division() public view returns(uint) {
        return div;
    }
    //to return rase to power
    function raisePower() public view returns(uint) {
        return raise;
    }
    //to return remainder
    function Remainder() public view returns(uint) {
        return remainder;
    }
}