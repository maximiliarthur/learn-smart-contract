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

    // mapping by name thur => 90
    mapping (string => uint256) public nameToFavoriteNumber;


    function store( uint _favoriteNumber) public virtual { // adding the virtual mark for overriding the function
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
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

