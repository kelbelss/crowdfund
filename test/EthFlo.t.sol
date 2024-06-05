// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {EthFlo} from "../src/EthFlo.sol";

contract EthFloTest is Test {
    EthFlo ethFlo;

    address public CREATOR = makeAddr("creator");
    uint256 constant DEADLINE = 0; // figure out times
    uint256 constant GOAL = 1 ether;

    function setUp() public {
        ethFlo = new EthFlo();
    }

    function testCreateFundraiser() public {
        vm.startPrank(CREATOR);
        ethFlo.createFundraiser(CREATOR, DEADLINE, GOAL);
    }

    function test_createFundraiser_success() {}

    function test_createFundraiser_fail_DeadlineError() {}

    function test_createFundraiser_fail_GoalError() {}
}
