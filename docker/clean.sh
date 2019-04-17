#!/usr/bin/env bash
#
echo "[$0]::Enter"
status=0

sudo docker stop sql1
sudo docker rm sql1

echo "[$0]::Exit [$status]"
exit $stats
