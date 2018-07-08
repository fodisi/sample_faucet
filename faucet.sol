pragma solidity ^0.4.17;

//Sample Faucet contract, built based on Mastering Ethereum book.
contract Faucet {
    
    // Gives a max. of 0.1 ETH to the address that is requesting it.
    function withdraw(uint _withdraw_amount) public {
        require(_withdraw_amount <= 100000000000000000);
        msg.sender.transfer(_withdraw_amount);
    }
    
    // Standard function used to fund the contract.
    function() public payable {}
}
