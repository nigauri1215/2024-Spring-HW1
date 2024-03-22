// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 private studentCode;

    function register() external returns (uint256) {
        studentCode = 123;
        return studentCode;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 is IClassroomV2 {
    uint256 private studentCode;

    function register() external view returns (uint256) {
        return studentCode;
    }

    function isEnrolled() external view returns (bool) {
        return true;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    uint256 private studentCode;

    function register() external view returns (uint256) {
        return studentCode;
    }
}
