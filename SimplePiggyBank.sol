// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimplePiggyBank {
    address owner;
    address[] depositor;
    mapping (address => uint256) public saldoUser;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only Owner Cuyyy");
        _;
    }

    // Function
    function deposit() public payable {
        // Minimum deposit is 0.01 ETH, if less → revert
        require(msg.value >= 0.01 ether, "Deposit minimum 0.01 ETH");
        // Add msg.value to saldoUser[msg.sender]
        saldoUser[msg.sender] += msg.value;

        // If this is the FIRST TIME this address deposits
        // add msg.sender to the depositors array
        // (Hint: check if saldoUser[msg.sender] == msg.value, if yes, it means first deposit)
        if (saldoUser[msg.sender] == msg.value) {
            depositor.push(msg.sender);
        }
    }

    function mySaldo() public view returns (uint256) {
        // Return the balance of msg.sender
        return saldoUser[msg.sender];
    }

    function getBalance() public view returns (uint256) {
        // Return total ETH inside the contract
        return address(this).balance;
    }

    function breakPiggyBank() public onlyOwner {
        // Loop all depositors
        for (uint256 i = 0; i < depositor.length; i++) {
            // Reset saldoUser[depositors[i]] = 0 one by one
            address depositorNich = depositor[i];
            saldoUser[depositorNich] = 0;
        }

        // Reset depositors array = new address[](0)
        depositor = new address[](0);

        // Send all ETH to owner using call()
        (bool success, ) = payable(msg.sender).call{value: address(this).balance}("");
        // require(success) make sure transfer is successful
        require(success, "Transfer Failed");
    }
}