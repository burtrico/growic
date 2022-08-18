pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

error AlreadyRegistered(uint256 studentID);

contract StudentDetails {

  // event SetPurpose(address sender, string purpose);

    // string public purpose = "Building Unstoppable Apps!!!";

  address public owner;

  struct Student { // Struct
    address studentID;
    bool registered;
    uint percentage;
    uint totalMarks;
    uint index;
  }

  mapping (address => Student) public students;

  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner {
    require(
        msg.sender == owner,
        "Only owner can call this function."
    );
    _;
  }

  if(owner = registered) 
    revert AlreadyRegistered(owner);

  


    function register(
      address studentID,
      uint percentage,
      uint totalMarks
      ) {
        student = new Student;
        
        student.studentID = studentID;
        student.percentage = percentage;
        student.totalMarks = totalMarks;

        students.push(student)
      }

    function getStudentDetails(address studentID) {

    }




  // function setPurpose(string memory newPurpose) public {
  //     purpose = newPurpose;
  //     console.log(msg.sender,"set purpose to",purpose);
  //     emit SetPurpose(msg.sender, purpose);
  // }


    // uint storedData;

    // function set(uint x) public {
    //     storedData = x;
    // }

    // function get() public view returns (uint) {
    //     return storedData;
    // }


}
