//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.9;

contract CrowdFunding{
    struct Campaign{
        address owner;
        string title;
        string description;
        uint256 target;
        unit256 deadline;
        uint256 amountCollected;
        address[] donators;
        uint256[] donations;
    }

    mapping(uint256 => Campaign) public campaigns;

    uint256 public numberofCampaigns=0;

    function createCampaign(address _owner,string memory _title,string memory _description,uint256 _target,uint256 _deadline) public returns(uint256)
    {
        Campaign storage campaign=campaigns[numberofCampaigns];
        require(campaign.deadline<block.timestamp,"The deadline should be a date in the future.");
        campaign.owner=_owner;
        campaign.title=_title;
        campaign.description=_description;
        campaign.target=_target;
        campaign.deadline=_deadline;
        campaign.amountCollected=0;
        numberofCampaigns++;

        return numberofCampaigns - 1;
    }

    function donateToCampaign(uint256 _id) public payable{
        uint256 amount=msg.value;
        Campaign storage campaign=campaign[_id];
        Campaign.donators.push(msg.sender);
        Campaign.donators.push(msg.sender);
        

    }
}