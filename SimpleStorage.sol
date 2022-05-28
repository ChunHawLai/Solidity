// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // Declaring the version of solidity

contract SimpleStorage{
    uint256 public favouriteNumber;
    //People public person = People({favouriteNumber:2, name:"Martin"});

    struct People{
        uint256 favouriteNumber;
        string name;
    }
    // uint256[] public favouriteNumbersList;
    People[] public people;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // view, pure dont need gas
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        // People memory newPerson = People({favouriteNumber: _favouriteNumber, name: _name});
        // People memory newPerson = People( _favouriteNumber, _name);
        people.push(People(_favouriteNumber, _name));
    }
}
