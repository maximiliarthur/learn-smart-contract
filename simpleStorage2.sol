// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {

    //uint equal to uint256
    uint256  myfavoriteNumber;

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
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPerson.push( Person(_favoriteNumber,_name) );
    }
}

