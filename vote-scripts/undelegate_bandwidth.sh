#!/bin/bash

# $1 - from
# $2 - receiver
# $3 - net stake
# $4 - cpu stake

cleos system undelegatebw $1 $2 "$3 EOS" "$4 EOS"