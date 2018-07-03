pragma solidity ^0.4.17;

//Sample Faucet contract, built based on Mastering Ethereum book.
// Gives a max. of 0.1 ETH to the address that is requesting it.
contract Faucet {
    function withdraw(uint _withdraw_amount) public {
        require(_withdraw_amount <= 100000000000000000);
        msg.sender.transfer(_withdraw_amount);
    }
    
    function() public payable {}
}


