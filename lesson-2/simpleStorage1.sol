// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {

    //uint equal to uint256
    uint256 public favoriteNumber;

    function store( uint _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
        retrive(); // it will cost the gas since the function is called
    }

    // only for view, view function does not cost any of gas when it is not called
    function retrive() public view returns (uint256){
        return favoriteNumber;
    }
}

