#!/bin/sh
curl --silent "https://api.github.com/repos/helium/blockchain-etl/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'