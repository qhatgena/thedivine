contract TheDivine{

    uint256 private WorldTree;
    
    function TheDivine(){
        //The WorldTree's seed it own address
        WorldTree = uint256(address(this));
    }

    function GetPower() returns(uint256){
        uint8 Branch = uint8(WorldTree);
        bytes32 Value = sha3(WorldTree, msg.sender);
        if(Branch > 127){
            Value = sha3(Value);
        }else{
            Value = sha3(sha3(Value));
        }
        WorldTree = uint256(Value);
        return WorldTree;
    }
    
}