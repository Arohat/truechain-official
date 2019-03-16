pragma solidity ^0.5.0;

contract Like {
    mapping (uint8 => uint256) private _likecount;

    function getInfo () public view returns (uint256[] memory info) {
        info = new uint256[](5);
        for (uint8 i = 0; i < 5; i++) {
            info[i] = _likecount[i];
        }
    }

    function like (uint8 _i) public {
        _likecount[_i] = _likecount[_i] + 1;
    }
}
