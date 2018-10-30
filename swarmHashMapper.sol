pragma solidity ^0.4.24;

contract swarmHashMapper {
    struct SwarmHashStruct {
        bytes32 pt1;
        bytes32 pt2;
    }
    
    mapping (address => SwarmHashStruct) swarmHash;
    
    function store_swarm_hash(bytes32 inputPt1, bytes32 inputPt2) public {
        swarmHash[msg.sender].pt1 = inputPt1;
        swarmHash[msg.sender].pt2 = inputPt2;
    }
    
    function get_swarm_hash(address _address) public view returns (bytes32[2]) {
        return ([swarmHash[_address].pt1, swarmHash[_address].pt2]);
    }
}