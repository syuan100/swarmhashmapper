swarmHash: public({
  pt1: bytes32,
  pt2: bytes32
}[address])

@public
def store_swarm_hash(inputPt1: bytes32, inputPt2: bytes32):
  self.swarmHash[msg.sender].pt1 = inputPt1
  self.swarmHash[msg.sender].pt2 = inputPt2

@public
@constant
def get_swarm_hash(_address: address) -> (bytes32[2]):
  return [self.swarmHash[_address].pt1, self.swarmHash[_address].pt2]