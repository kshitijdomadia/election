pragma solidity ^0.5.16;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

<<<<<<< HEAD
  constructor() {
=======
  constructor () public {
>>>>>>> b5d7bbb8f276a01fe35bbba1e25d219c048fda1b
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
