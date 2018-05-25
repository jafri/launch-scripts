#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

printf "\n${GREEN}Entire scope of eosio.nft${NC}\n"
cleos get table eosio.nft eosio.nft token
