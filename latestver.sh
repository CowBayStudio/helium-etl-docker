#!/bin/sh
curl --silent "https://api.github.com/repos/helium/blockchain-etl/tags" | jq -r '.[0].name'
