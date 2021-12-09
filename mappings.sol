// address and mapping are two different data types


// Ethereum is made up of accounts. Account has a balance of Ether. Send/receive ether payment to other accounts
// Each account has an address (like a bank account number)

// mapping is another way to store data in solidity

// Example of a mapping is 

mapping (address => uint) public accountBalance;
mapping (uint => string) userIdToName;

// mapping is key value storage

// Msg.Sender
// Global variables like msg.sender are available to all functions. It refers to address of the person or
// smart contract that calls the current function

mapping (address => uint) favoriteNumber;

function setMyNumber(uint _myNumber) public {
    favoriteNumber[msg.sender] = _myNumber; // setter
}

function getMyNumber() public view returns (uint) {
    return favoriteNumber[msg.sender];
}



