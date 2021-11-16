#!/bin/sh
release_tag=$(curl --silent "https://api.github.com/repos/helium/blockchain-etl/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/')

git clone -b $release_tag -q https://github.com/helium/blockchain-etl /usr/src/etl
 
