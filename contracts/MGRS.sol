// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MGRS is ERC20, Ownable {

    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18;

    constructor(address treasury) ERC20("Marengo-Argos", "MGRS") {
        require(treasury != address(0), "Invalid treasury address");
        _mint(treasury, MAX_SUPPLY);
        transferOwnership(treasury);
    }
}
