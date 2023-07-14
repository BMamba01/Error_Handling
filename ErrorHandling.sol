// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    int initBalance = 1000;

    function withdrawl(int amount) public returns (int) {
        assert(amount > 0);

        if(amount > initBalance){
            revert("Withdrawl amount should be less than the current balance");
        }
        initBalance -= amount;
        return initBalance;
    }

    function depositBalance(int amount) public returns (int){
        require(amount >= 0, "Amount to be deposited should be greater than 0");
        initBalance += amount;
        return initBalance;
    }

    function viewBalance() public view returns(int){
        return initBalance;
    }

}
