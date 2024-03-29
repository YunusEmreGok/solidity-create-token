// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol"; // 1. satir

contract xxxx {
    IERC20 private _ubxsToken; // 2. satir

    constructor(address tokenAddress) {
        _ubxsToken = IERC20(tokenAddress); // 3. satir
    }

    function mint(uint256 payUbxs) external {
        require( // 4. satir
            _ubxsToken.transferFrom(msg.sender, address(this), payUbxs * 10**6),
            "Transaction Error"
        );
    }
}
