pragma solidity ^0.4.7;

contract ServiceProvider {
    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;
    string public name;
    string public symbol;
    

    /* Initializes contract with initial supply tokens to the creator of the contract */
    function ServiceProvider(
        uint256 initialSupply, string _name, string _symbol) {
        balanceOf[msg.sender] = initialSupply;              // Give the creator all initial tokens
        name = _name;
        symbol = _symbol;
            
        }
function balance(){
balanceOf[msg.sender]=10000;

}
    /* Send coins */
    function transfer(address _to, uint256 _value) {
        if (balanceOf[msg.sender] < _value) throw;           // Check if the sender has enough
        if (balanceOf[_to] + _value < balanceOf[_to]) throw; // Check for overflows
        balanceOf[msg.sender] -= _value;                     // Subtract from the sender
        balanceOf[_to] += _value;                            // Add the same to the recipient
    }

    function getBalance(address _to) returns(uint256) {
        return balanceOf[_to];                             //Check user balance
    }
}
