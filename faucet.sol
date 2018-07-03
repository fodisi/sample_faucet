pragma solidity ^0.4.17;

contract Faucet {
    function withdraw(uint _withdraw_amount) public {
        require(_withdraw_amount <= 100000000000000000);
        msg.sender.transfer(_withdraw_amount);
    }
    
    function() public payable {}
}


