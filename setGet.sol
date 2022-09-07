pragma solidity ^0.4.0;

// create contract raisePower
contract raisePower{
    //declaring state variable
    uint a;
    uint b;
    uint c;
    string d;

    //create a function to set data
    function set(uint _a, uint _b, string _d) public{
        d = _d = 'The answer is: ';
        a = _a;
        b  = _b;
        c = _a ** _b;
    }

    //create a function that gets our data
    function get() public view returns(string, uint){
        return (d, c);
    }
}