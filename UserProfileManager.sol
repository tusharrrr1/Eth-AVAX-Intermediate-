// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfileManager {
    address public owner;

    struct UserProfile {
        string name;
        uint age;
        string email;
    }

    mapping(address => UserProfile) private profiles;
    mapping(address => bool) private profileExists;

    constructor() {
        owner = msg.sender;
    }

    modifier profileNotExists() {
        require(!profileExists[msg.sender], "Profile already exists");
        _;
    }

    modifier profileExistsOnly() {
        require(profileExists[msg.sender], "Profile does not exist");
        _;
    }

    function createProfile(string calldata name, uint age, string calldata email) external profileNotExists {
        // Ensure age is a positive number
        require(age > 0, "Age must be positive");

        profiles[msg.sender] = UserProfile(name, age, email);
        profileExists[msg.sender] = true;

        // Assert that the profile has been created
        assert(profileExists[msg.sender] == true);
    }

    function deleteProfile() external profileExistsOnly {
        // Revert if the profile does not exist
        if (!profileExists[msg.sender]) {
            revert("Profile does not exist");
        }

        delete profiles[msg.sender];
        profileExists[msg.sender] = false;

        // Assert that the profile has been deleted
        assert(profileExists[msg.sender] == false);
    }

    function getProfile() external view profileExistsOnly returns (string memory name, uint age, string memory email) {
        UserProfile storage profile = profiles[msg.sender];
        return (profile.name, profile.age, profile.email);
    }
}
