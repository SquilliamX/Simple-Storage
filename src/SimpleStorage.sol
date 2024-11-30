// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18 <0.9.0; // stating our version // this says greater than or equal to 0.8.19 but less than 0.9.0

contract SimpleStorage {
    // all types of variables are: boolean, unit(only positive), int(postive or negative), string, bytes
    // myFavoriteNumber gets initialized to 0 if no value is given
    // variables get initialized as internal if no visibility is given. (public/private/external/internal)
    // variables that are created outside of functions and in contracts are saved in storage.
    uint256 myFavoriteNumber; // 0

    // arrays start counting from 0
    // [slot 0, slot 1, slot 2] = [favoriteNumber 10, favoriteNumber 54, favoriteNumber 86]
    // uint256[] listOfFavoriteNumbers;

    // You can create your own types by using the "struct" keyword
    struct Person {
        // for every person, they are going to have a favorite number and a name:
        uint256 favoriteNumber; // slot 0
        string name; // slot 1
    }

    // dynamic array: the size of the array can grow and shrink
    // static array: the size is fixed: example: Person[3]
    //dynamic array of type struct person
    Person[] public listOfPeople; // Gets defaulted to a empty array

    // mapping types are like a search functionality or dictionary
    mapping(string => uint256) public nameToFavoriteNumber;

    // when working with custom types you have to define the type("Person" in this case) on both sides
    // Person public myFriend = Person({favoriteNumber: 7, name: "Pat"});

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }
    // a function marked view means we are only going to read state from the blockchain
    // pure functions disallow updating state and disallow reading from the state or storage.
    // the "returns" keyword specifys what the function is going to give us when we call it

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // arrays come built in with the push function that allows us to add elements to an array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // pushes(adds) a user defined person into the Person array
        listOfPeople.push(Person(_favoriteNumber, _name));
        // adds the created mapping to this function, so that when you look up a name, you get their favorite number back
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // The EVM can read an write to several different places, the main ones are:
    // calldata, memory, storage
    // calldata and memory mean that this variable is only going to exist temporaily. It is only going to exist for the duration of the function call.
    // the difference is that calldata is temporary data that can not be modified.
    // memory is termpory data that can be modified
    // storage are permenant variables that can be modified
    // structs, mappings, and arrays need a memory keyword, uints do not. Strings are a memory of bytes, so it needs a memory keyword:
    //     function addPerson(string memory _name, uint256 _favoriteNumber) public
}
