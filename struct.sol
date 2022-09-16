// SPDX-License-Identifier: MIT
pragma solidity ^0.5.11;

//creating our contract
contract myStruct{

    //creating our struct
    struct Student{
        string Name;
        uint Level;
        uint Number;
    }

    //creating a struct variable for struct Student
    Student student;

    //creating a function to set struct students details
    function stuDetails() public {
        student = Student('Samuel Bright', 300, 8118169765);
        
        //using the CRUD method: Create, Read, Update, Delete
        //for update
        //student.Number=8146235916;
        //delete
        //delete student.Number;
    }

    function getDetails() public view returns(uint){
        return student.Number;
    }
}