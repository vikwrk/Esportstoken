// SPDX-License-Identifier: MIT

pragma solidity 0.8.2;

import "../ERC20BasicApproveExtension.sol";
import "../ERC20BaseToken.sol";

contract EsportsToken is ERC20BaseToken, ERC20BasicApproveExtension {
    constructor(
        address esportsAdmin,
        address executionAdmin,
        address beneficiary,
        uint256 amount
    ) ERC20BaseToken("ESDAOTOKEN", "ESDAOTOKEN", esportsAdmin, executionAdmin) {
        _admin = esportsAdmin;
        if (beneficiary != address(0)) {
            uint256 initialSupply = amount * (1 ether);
            _mint(beneficiary, initialSupply);
        }
    }
}