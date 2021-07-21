// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MacToken is ERC20 {
    constructor() public ERC20("Mac Token", "MAC") {
        _mint(msg.sender, 10000000000000000000000000);
    }
}