#!/bin/bash
for (( i=1; i<=10; i++))
	do
    cleos push action eosio.nft create '["eoscalgaryca", "Token #$i"]' -p eoscalgaryca
	done
