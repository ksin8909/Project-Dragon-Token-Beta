// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DragonTokenBeta is ERC20 {
    constructor() ERC20("DragonTokenBeta", "DGT") {
        _mint(msg.sender, 50000 * 10 ** decimals());
    }

    function claimToken() public {
        _transfer(address(this), msg.sender, 10 * 10 ** decimals());
    }
}
