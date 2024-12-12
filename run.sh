#!/usr/bin/env bash
## Post the Failed Jobs from Prometheus to Mastodon

set -e  ## Exit when any command fails
set -x  ## Echo commands

## Set the Access Token for Mastodon
## https://docs.joinmastodon.org/client/authorized/#token
## export MASTODON_TOKEN=...
set +x  ## Disable Echo
. ../mastodon-token.sh
set -x  ## Echo commands

## Post the Failed Jobs from Prometheus to Mastodon
cargo run
