auto generated tests
testEtherscanContractLinks748
	|contract|
	contract := self class fetchEtherscanContractFrom: 'https://etherscan.io/address/0x5809df7d3bc8b26e148c60ce2998c911f248cca2#code'. 
	self parseTest: contract.