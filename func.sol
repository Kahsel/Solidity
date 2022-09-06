pragma solidity ^0.4.0;
//declaring contract
contract Inheritance{
    //state variable
    address owner;
    bool deceased;
    uint money;
    //declaring constructor
    constructor() public payable{
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }
    //modifiers for function
    modifier oneOwner(){
        require(msg.sender ==owner);
        _;
    }
    modifier isDeceased{
        require(deceased == true);
        _;
    }
    //list of wallets
    address[] wallets;
    //mapping of dictionary, key:value pair
    mapping (address => uint) inheritance;
    //functions
    function setup(address _wallet, uint _inheritance) public oneOwner{
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }
    function moneyPaid() private isDeceased{
        for (uint i=0; i<wallets.length; i++){
            wallets[i].transfer(inheritance[wallets[i]]);
        }
    }
    function dies()public oneOwner{
        deceased = true;
        moneyPaid();
    }
}