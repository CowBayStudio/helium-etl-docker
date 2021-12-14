#!/bin/sh
release_tag=$(curl --silent "https://api.github.com/repos/helium/blockchain-etl/tags" | jq -r '.[0].name')

git clone -b $release_tag -q https://github.com/helium/blockchain-etl /usr/src/etl
 
