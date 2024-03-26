// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {ClassroomV2,ClassroomTest} from "../../test/Classroom/Classroom.t.sol";

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 private studentCode;
    bool public Enrolled;
    

    function register() external returns (uint256) {
        if(!Enrolled){
            Enrolled=true;
            return 1000;
        }
        else{
            return 123;
        }
    }
}

/* StudentV2 Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}
contract StudentV2 {
    
    function register() external returns (uint256) {
        if(!IClassroomV2(msg.sender).isEnrolled()){
            return 1000;
        }
        else{
            return 123;
        }
    }
}

/* StudentV3 Contract */
contract StudentV3 {
    uint256 private studentCode;

    function register() external returns (uint256) {
        studentCode = 1000;
        return studentCode;
    }
}