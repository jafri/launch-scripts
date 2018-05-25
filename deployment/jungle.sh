GREEN='\033[0;32m'
NC='\033[0m' # No Color
mkdir -p logs-dir

# Clean up
# Reset
sh ./utility/reset.sh

echo "\n${GREEN}Starting Nodeos${NC}\n"
nohup nodeos --data-dir ./data-dir --config-dir ./config-dir  > ./logs-dir/eos.log 2>&1 &
echo $! > eos.pid

# start keosd
echo "\n${GREEN}Starting keosd wallet${NC}\n"
nohup keosd -d ./data-dir --http-server-address localhost:8900 >./logs-dir/wallet.log 2>&1 &
echo $! > wallet.pid

# Wallet
cleos -u http://dev.cryptolions.io:38888 wallet create
cleos -u http://dev.cryptolions.io:38888 wallet import 5J1yvFXFSsvX4NAeNPGCzhQPSnNFKuKgoiivRJTyEkah7ihY2rp

# Bandwidth
echo "\n${GREEN}Allocate Bandwidth${NC}\n"
cleos -u http://dev.cryptolions.io:38888 system delegatebw whale whale "100.0000 EOS" "100.0000 EOS" --transfer

cleos -u http://dev.cryptolions.io:38888 set contract whale $EOS_BUILD_DIR/contracts/eosio.nft -p whale


# Create token
# cleos push action whale create '["syedalijafri", "BEANS"]' -p whale
