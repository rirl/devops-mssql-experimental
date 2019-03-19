#!/usr/bin/env bash
#
# MS-SQL Server on Docker (under Ubuntu).
echo "[$0]::Enter"
status=0

set -x; docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=TheG0$pel' -p 1433:1433 --name sql1 -d mcr.microsoft.com/mssql/server:latest; status=$?; set +x

echo "[$0]::Exit [$status]"
exit $stats
