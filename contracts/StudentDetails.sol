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

  
    // uint numCampaigns;
    // mapping (uint => Campaign) campaigns;

    // function newCampaign(address payable beneficiary, uint goal) public returns (uint campaignID) {
    //     campaignID = numCampaigns++; // campaignID is return variable
    //     // We cannot use "campaigns[campaignID] = Campaign(beneficiary, goal, 0, 0)"
    //     // because the right hand side creates a memory-struct "Campaign" that contains a mapping.
    //     Campaign storage c = campaigns[campaignID];
    //     c.beneficiary = beneficiary;
    //     c.fundingGoal = goal;
    // }

    function register(
      address studentID,
      uint percentage,
      uint totalMarks
      ) public returns (uint studentID) {
        studentID = index++;
        
        Student storage s = students[studentID]
        s.studentID = studentID;
        s.percentage = percentage;
        s.totalMarks = totalMarks;
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
