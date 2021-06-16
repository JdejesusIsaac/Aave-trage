// SPDX-License-Identifier: MIT

pragma solidity >=0.7.3;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface bestBorrowToken {
    function deposit(uint amount) external;
    function withdraw(uint amount) external;
}

contract aaveTrage {

    IERC20 public bestSupplyToken;
      bestBorrowToken public collateralAsset;

    constructor(address _token, address _collateralAsset) {
        token = IERC20(_token);
        collateralAsset =  bestBorrowToken(_collateralAsset);
    }

    function deposit(uint amount) external {
        token.transferFrom(msg.sender, address(this), amount);
        token.approve(address(collateralAsset), amount);
        bestBorrowToken.deposit(amount);
    
    } 
    function withdraw(uint amount) external {
       bestBorrowToken.withdraw(amount);
        token.transfer(msg.sender, amount);
    }


}


