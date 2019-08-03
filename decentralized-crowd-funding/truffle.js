const HDWalletProvider = require('truffle-hdwallet-provider');
const HDWalletPrikeyProvider = require('truffle-hdwallet-provider-privkey');
const infuraApiKey = 'Disclosed';
const privKey = '0x51fe0c9cbf4234b5359b750eff16252f0bb1c418750be3f55e61e1b006fa12b0'; // metamask account private key
const mnemonic = '';

module.exports = {
    networks: {
        development: {
            host: "127.0.0.1",
            port: 8545,
            network_id: "*",
            gas: 5000000,
            gas_price: 100,
            from: '0xF6d230748e695342C3BB09A915915737A02057B3'
        },
        // ropsten: {
        //     provider: function () {
        //         return new HDWalletPrikeyProvider(privKey, 'https://ropsten.infura.io/ec2ddc284d6b40d09de1a494649b954b');
        //     },
        //     network_id: 3,
        //     gas: 4000000,
        //     gas_price: 100,
        //     from: '0x598f107f60b19dd1467b1bea332a2a3ab7dfe37b'
        // },
        // main: {
        //     provider: function () {
        //         return new HDWalletPrikeyProvider('', 'https://mainnet.infura.io/x');
        //     },
        //     network_id: 1,
        //     gas: 4000000,
        //     gas_price: 100,
        //     from: 'Disclosed'
        // }
    }
};