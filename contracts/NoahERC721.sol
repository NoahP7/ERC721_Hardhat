pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
// import "../node_modules/hardhat/console.sol";

// This is the main building block for smart contracts.
contract NoahERC721 is ERC721Enumerable{
    
    string _name = "NoahERC721";
    string _symbol = "NE721";

    address public owner;

    mapping(address => uint256) balances;

      constructor() ERC721(_name, _symbol){
        _safeMint(msg.sender, 1);
        owner = msg.sender;
    }

    function noah_safeTransferFrom(address from, address to, uint256 tokenId) external {
        safeTransferFrom(from, to, tokenId);
    }

    function noah_balanceOf(address account) external view returns (uint256) {
        return balanceOf(account);
    }

    function noah_setApprovalForAll(address operator, bool approved) external {
        setApprovalForAll(operator, approved);
    }
}