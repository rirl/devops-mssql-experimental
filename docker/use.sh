#!/usr/bin/env bash
#
# MS-SQL Server on Docker (under Ubuntu).
echo "[$0]::Enter"
status=0

set -x; docker exec -it sql1 "bash"; status=$?; set +x

echo "[$0]::Exit [$status]"
exit $status
