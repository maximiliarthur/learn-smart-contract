// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {

    //uint equal to uint256
    uint256  myfavoriteNumber; // this will be stored as storage by default

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPerson;


    function store( uint _favoriteNumber) public{
        myfavoriteNumber = _favoriteNumber;
        retrive(); // it will cost the gas since the function is called
    }

    // only for view, view function does not cost any of gas when it is not called
    function retrive() public view returns (uint256){
        return myfavoriteNumber;
    }

    // function to add array

    // The storage can not be used in function because the solidity know that the value is temporary used

    // function addPerson(string storage _name, uint256 _favoriteNumber) public {
    //     listOfPerson.push( Person(_favoriteNumber,_name) );
    // }
    
    // The memory will store a value temporary but can be modified
    // String is array of byte, so it can be stored as memory. Otherwise, the int, uint256 and etc can not be stored as memory because it is not array

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPerson.push( Person(_favoriteNumber,_name) );
    }

    // The calldata will store a value temporary but can not be modified

    // function addPerson(string calldata _name, uint256 _favoriteNumber) public {
    //     listOfPerson.push( Person(_favoriteNumber,_name) );
    // }
}

