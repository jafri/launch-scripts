# eosio.token
# Create contract
cleos set contract eosio.nft $EOS_BUILD_DIR/contracts/eosio.nft -p eosio.nft
sleep 1

# Create token
#cleos push action eosio.nft create '["syedalijafri", "BEANS"]' -p eosio.nft

# Try transfer
# cleos push action eosio.nft transfer '["eoscalgaryca", "Token #$i"]' -p eoscalgaryca
