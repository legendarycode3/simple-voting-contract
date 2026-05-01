// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; 


/**
 * @title   Simple Voting Contract
 * @author  Legendary Code 
 * @notice  This is is for testing the simple voting system
 */


import {Test} from "forge-std/Test.sol";
import "../src/Voting.sol";

contract VotingTest is Test {
 
    Voting voting;



    /**Functions */
    function setUp() public {
        
        /// @notice This will allow you to test the initialized  candidateNames (logics)
        string[] memory candidateNames = new string[](4);
        candidateNames[0] = "Nathaniel";
        candidateNames[1] = "Williams";
        candidateNames[2] = "LegendaryCode";
        candidateNames[3] = "Richard";

        voting = new Voting(candidateNames);
    }


    /// @notice Function testInitialCandidateCount() , helps comfirm first if my "constructor" works perfectly (where i parsed in string[] memory candidateNames). if it fails then dont move further testing, check the error
    function testInitialCandidateCount() public view {
        assertEq(voting.candidatesCount(), 4, "Failed the intialCandidateCount Test");
    }

    /// @notice function testAddCandidate(), to see if it work perfectly
    function testAddCandidate() public  {
        voting.addCandidate("Nathaniel");
        assertEq(voting.candidatesCount(), 5, "Add Candidate function is not working properly");
    }


    /// @notice Function testCandidateData(), verifies if the candidate was actually added or not
    function testCandidateData() public {
        voting.addCandidate("Williams");

        /// @notice  Maps the new candidate instance to a unique ID (the current count) in a state mapping or array called candidates ViseVersa change 
        (string memory name, uint256 voteCount) = voting.candidates(2) ;

        assertEq(name, "Williams");
        assertEq(voteCount, 0);
    }


    /// @notice Function testOnlyOwnerCanAddCandidate(), tests if it is only owner can add Candidate
    function testOnlyOwnerCanAddCandidate() public {
        /// @notice Stimulating random user using vm.prank. Pretending that the transaction is coming from address(1) (some random user, NOT the owner)
        vm.prank(address(1)); 

        /// @notice if the function fails revert(), using the foundry cheatcode. The testing tool that tells Foundry to expect the very next external call to revert. If the next call does not revert, the test fails. 
        vm.expectRevert();   //  expect failure

        voting.addCandidate("Frudstar");
    }


    /// @notice Function testCantAddEmptyCandidate() ,test that checks if the candidate is empty string (empty name) then revert
    function testCantAddEmptyCandidate() public {
        /// @notice  expect failure
        vm.expectRevert();
        voting.addCandidate("");
    }
    

    /// @notice Function testDuplicateCandidate() , that test for duplicate candidate votes. If any fail , it not pass
    function testDuplicateCandidate() public {
        vm.expectRevert();
        voting.addCandidate("Nathaniel");
    }




}


