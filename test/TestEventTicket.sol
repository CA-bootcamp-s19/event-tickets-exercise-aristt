pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EventTickets.sol";
import "../contracts/EventTicketsV2.sol";

contract TestEventTicket {

  string _description = "description";
  string _url = "URL";
  uint _ticketNumber = 100;

  function testEventDetails() public {
    EventTickets eventTickets = EventTickets(DeployedAddresses.EventTickets());

    (string memory description, string memory website, uint totalTickets, uint sales, ) = eventTickets.readEvent();

    Assert.equal(description, _description, "the event descriptions should match");
    Assert.equal(website, _url, "the event urls should match");
    Assert.equal(totalTickets, _ticketNumber, "the number of tickets for sale should be set");
    Assert.equal(sales, 0, "the ticket sales should be 0");

  }

}
