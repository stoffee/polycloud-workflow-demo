#!/usr/bin/env bash
sudo apt update && sudo apt install -y unzip jq boinc-client dnsutils
systemctl restart boinc-client
sleep 5
sudo boinccmd --project_attach http://www.worldcommunitygrid.org/ 0abc390da3c3b820dd884024d84d8cbf
sleep 30
systemctl restart boinc-client
sleep 120
sudo boinccmd --project http://www.worldcommunitygrid.org/ detach
sudo boinccmd --project_attach http://www.worldcommunitygrid.org/ 0abc390da3c3b820dd884024d84d8cbf
