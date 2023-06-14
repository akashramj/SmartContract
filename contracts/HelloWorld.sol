// SPDX-License-Identifier: None

pragma solidity >=0.8.9;

contract HelloWorld {
   event UpdatedMessages(string oldStr, string newStr);
   string public messageVal;
   constructor(string memory initialMessage) {
      messageVal = initialMessage;
   }
   function update(string memory newMessage) public {
      string memory oldMessage = messageVal;
      messageVal = newMessage;
      emit UpdatedMessages(oldMessage, newMessage);
   }
}