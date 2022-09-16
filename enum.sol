pragma solidity ^0.5.11;

conract myEnum{

    //creating our enum name and its list
    enum Button{ON, OFF}

    //creating an enum variable for Button
    Button button;

    //creating a function that set an ON button
    function buttonON() public{
        button = Button.ON;
    }

    //creating a function that set an OFF button
    function buttonOFF() public{
        button = Button.OFF;
    }

    //function to get our result to which of the function we set
    //either button ON or OFF
    function getStatus() public view returns(Button){
        return button;
    }
}