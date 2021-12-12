// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "../node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "../node_modules/@openzeppelin/contracts/utils/Counters.sol";

contract IdeaNft is ERC721 {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenId;

    constructor() ERC721("IDEA_NFT", "IDEA") {}

    function mint(address owner) public {
        _tokenId.increment();

        uint256 newTokenID = _tokenId.current();
        _mint(owner, newTokenID);
    }

    //  function transferOwnership(address owner ,address newOwner) public {
    // }
}
