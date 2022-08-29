pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "../node_modules/hardhat/console.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

error AlreadyRegistered(uint256 studentID);

contract StudentDetails {

  address public owner;
  address[] public studentIndex;

  // uint count = userIndex.length;

  // number = uint, string = bytes32
  struct Student {
    uint percentage;
    uint totalMarks;
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

  // if(owner = registered) 
  //   revert AlreadyRegistered(owner);

  function register(
    address studentID,
    uint percentage_,
    uint totalMarks_
    ) public returns(bool success) {
        students[studentID].percentage_ = percentage;
        students[studentID].totalMarks = totalMarks_;

        studentIndex.push(studentID);
        return true;
  }

  function getStudentDetails(address studentID)
    public view returns(bytes32 ens, uint percentage, 
    uint totalMarks) {
      return(
        students[studentID].ens,
        students[studentID].percentage,
        students[studentID].totalMarks);
    }
  }
