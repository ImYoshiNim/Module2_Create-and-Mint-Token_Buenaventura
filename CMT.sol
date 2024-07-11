// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Wal_Lee_T is ERC20 {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor(address initialOwner) ERC20("Wal_Lee_T", "WLT") {
        owner = initialOwner;
        _mint(initialOwner, 100 * 10 ** decimals());
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount % 10 == 0, "Transfer amount must be a multiple of 10");
        return super.transfer(recipient, amount);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
