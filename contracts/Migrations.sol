<<<<<<< HEAD
pragma solidity ^0.6.9;
=======
pragma solidity ^0.4.25;
>>>>>>> 2020update

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

<<<<<<< HEAD
  constructor() public{
=======
  constructor () public {
>>>>>>> 2020update
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}