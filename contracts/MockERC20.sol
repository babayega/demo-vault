// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

import {ERC20Upgradeable} from "./ERC20Upgradeable.sol";

contract MockERC20 is ERC20Upgradeable {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public {
        __ERC20_init_unchained(_name, _symbol);
        _setupDecimals(_decimals);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }
}
