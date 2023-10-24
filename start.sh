#!/bin/sh
curl -fsSL https://download.hop.sh/install | sh

hop auth login --token YOUR_PATH_TOKEN
hop fwd DEPLOYMENT_ID --project PROJECT_ID --publish 6379 &
node index.js