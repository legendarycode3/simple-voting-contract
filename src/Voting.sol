// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; 


/**
 * @title   Simple Voting Contract
 * @author  Legendary Code 
 * @notice  A simple voting contract, that requires pre-defined candidates, authorized voters (and ensures that each voter can only vote once.)
 */


contract Voting {
    
    /**STATE VARIABLES*/
    address public immutable i_owner;

    struct Candidate {
        string name;
        uint voteCount;
    }
    
    mapping(address => bool) public voters; //Tracking who has voted

    /// @notice Stores candidates by ID. [ It provides an efficient way to retrieve specific candidate details by their ID without iterating through an array.]
    mapping(uint => Candidate) public candidates;

    /// @notice Tracking the total number of candidates registered in the contract. 
    uint public candidatesCount; 


    /** EVENTS */
    event VoterCasted(uint indexed _candidateId);



    /**CONSTRUCTORS*/
    constructor(string[] memory candidateNames) { /// @notice Initialized a constructor.
        // Sets the address that deploys the contract as the owner
        i_owner = msg.sender;     

        // Loops through the array of names provided during deployment
        for(uint i = 0; i < candidateNames.length; i++){ 
            addCandidate(candidateNames[i]);
        }
    }



    /** FUNCTIONS */
    /// @notice A function that registers new candidates, for this contract only.
    function addCandidate(string memory name) public { 
       

        candidatesCount++; //  Increments a counter that tracks the total number of candidates registered.
        
        candidates[candidatesCount] = Candidate(name, 0); // Maps the new candidate instance to a unique ID (the current count) in a state mapping or array called candidates
    }


    /// @notice A Vote function .  Vote Casting , It ensures that voters can only vote once and that votes are cast for valid candidates.
    function vote(uint _candidateId) public {
        // Checks if voter, has already voted
        require(!voters[msg.sender], "Voter has already voted.");

        // Checks if Candidate ID is valid
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid Candidate ID" );

        // Record the voter that voted.
        voters[msg.sender] = true;

        // Update candidate vote count
        candidates[_candidateId].voteCount++;

        emit VoterCasted(_candidateId);
    }
}












