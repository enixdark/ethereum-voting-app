const DecentralizedCrowdFunding = artifacts.require("./DecentralizedCrowdFunding.sol");
const NewCaterAuction = artifacts.require("./NewCaterAuction.sol");
const CollectibleToken = artifacts.require("./CollectibleToken.sol");

module.exports = function (deployer) {
    // deployer.deploy(
    //     DecentralizedCrowdFunding,
    //     '0x598f107f60b19dd1467b1bea332a2a3ab7dfe37b', // _fundRecipient
    //     10 * 1e18, // _targetFunding
    //     'https://tomochain.io/', // _campaignUrl
    //     0, // _fundingStartTime
    //     0 // _fundingEndTime
    // ).catch(function (err) {
    //     console.log('err', err);
    // });
    // deployer.deploy(
    //     NewCaterAuction,
    //     '0xa4ce33ab63b6ce377df0478e03ba1f4ec8931baf',
    //     500000000000000000,
    //     'http://',
    //     1537783208,
    //     1537793375,
    //     50000000000000000
    // ).catch(function (err) {
    //     console.log('err', err);
    // });
    deployer.deploy(
        CollectibleToken,
        "Collectible Coin", // name
        "CLC", // symbol
        18, // decimals
        200000000,// _founderAmount
        "http://127.0.0.1:7545" //link
    ).catch(function (err) {
        console.log('err', err);
    });
};
