// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "solady-0.0.250/src/tokens/ERC20.sol";

contract Counter is ERC20 {
    constructor() {
        _mint(msg.sender, 10_000_000 * 10 ** decimals());
    }

    function name() public pure override returns (string memory) {
        return "Counter";
    }

    function symbol() public pure override returns (string memory) {
        return "CTR";
    }

    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
