// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Storage {
    uint256 private number;

    event NumberUpdated(uint256 newNumber);

    // Ghi dữ liệu vào blockchain
    function setNumber(uint256 _newNumber) public {
        number = _newNumber;
        emit NumberUpdated(_newNumber);
    }

    // Đọc dữ liệu (view function không tốn gas)
    function getNumber() public view returns (uint256) {
        return number;
    }
}