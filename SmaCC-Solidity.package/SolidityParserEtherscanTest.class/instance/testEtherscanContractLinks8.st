auto generated tests
testEtherscanContractLinks8
	|contract|
	contract := self class fetchEtherscanContractFrom: 'https://etherscan.io/address/0x422866a8f0b032c5cf1dfbdef31a20f4509562b0#code'. 
	SolidityParserTest new parseTest: contract.