// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KrishiBot {
    address public owner;
    uint public subsidyAmount = 2000;

    struct Farmer {
        string name;
        string aadhaar;
        uint cropId;
        uint quantity;
        bool eligible;
        bool subsidyClaimed;
    }

    mapping(address => Farmer) public farmers;

    constructor() {
        owner = msg.sender;
    }

    function registerFarmer(string memory _name, string memory _aadhaar, uint _cropId, uint _quantity) public {
        farmers[msg.sender] = Farmer(_name, _aadhaar, _cropId, _quantity, true, false);
    }

    function isEligible(address _farmer) public view returns (bool) {
        return farmers[_farmer].eligible;
    }

    function claimSubsidy() public {
        require(farmers[msg.sender].eligible, "Not eligible");
        require(!farmers[msg.sender].subsidyClaimed, "Already claimed");

        farmers[msg.sender].subsidyClaimed = true;
        // In a real-world dApp, you’d integrate with UPI APIs or transfer tokens here
    }

    function getFarmer(address _farmer) public view returns (string memory, string memory, uint, uint, bool, bool) {
        Farmer memory f = farmers[_farmer];
        return (f.name, f.aadhaar, f.cropId, f.quantity, f.eligible, f.subsidyClaimed);
    }
}
