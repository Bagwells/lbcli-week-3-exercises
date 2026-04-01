# Create a native segwit address and get the public key from the address.

nativeSegwitAddress=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" "bech32")

pubKey=$(bitcoin-cli -regtest -rpcwallet=builderswallet getaddressinfo $nativeSegwitAddress | jp -r '.pubkey')

echo $pubKey