//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;


contract Voting{

mapping(bytes32=>uint) public votesReceived;

bytes32[] public candidateList;

//need to modify info

constructor(bytes32[] memory candidateNames) public{
    // candidateNames= [bytes32("Butterbean"), bytes32("Dazzle"), bytes32("Cookie")];
    candidateList = candidateNames;
}


//This function returns the total votes a candidate has received so far
//Only access info
function totalVotesFor(bytes32 candidate) view public returns(uint256){
    require(validCandidate(candidate));
    return votesReceived[candidate];
}

//Modify Info
function addVoteForCandidate(bytes32 candidate) public{
    require(validCandidate(candidate));
     votesReceived[candidate]+=1;
}

//Read info
function validCandidate(bytes32 candidate) view public returns(bool){
    
    for(uint i=0; i<candidateList.length; i++){
        if(candidateList[i]==candidate){
            return true;
        }
    }

    return false;
}


}
