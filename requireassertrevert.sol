// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18;

contract SmartContract {
    address public owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    function withdraw(uint amount) external {
        // require() statement to check if the caller is the contract owner
        require(msg.sender == owner, "Only the contract owner can withdraw funds");
        
        // assert() statement to ensure that the amount is not greater than the contract balance
        assert(amount <= address(this).balance);
        
        // Transfer the requested amount to the contract owner
        payable(msg.sender).transfer(amount);
    }
    
    function divide(uint a, uint b) external pure returns(uint) {
        // require() statement to ensure that the divisor is not zero
        require(b != 0, "Divisor cannot be zero");
        
        // Perform the division operation and return the result
        return a / b;
    }
    
    function triggerRevert() external pure {
        // Revert the transaction and provide a custom error message
        revert("This transaction is explicitly reverted");
    }
}
