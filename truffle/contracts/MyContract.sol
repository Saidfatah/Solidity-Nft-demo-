// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MyContract {
    string public hello = "hi afeen";
    address payable public seller;
    address payable public buyer;

    struct Order {
        string descritption;
        bool completed;
    }

    function confirmOrder() public {
        buyer = payable(msg.sender);
    }

    constructor(string memory _text) {
        hello = _text;
    }
}
