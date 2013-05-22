#!/bin/bash
git push
ssh hanno-rein.de <<'ENDSSH'
cd /home/hanno/public_html/exoplanet.hanno-rein.de/oec_meta
echo "Starting update on"
hostname
git pull
echo "Update done."
ENDSSH
