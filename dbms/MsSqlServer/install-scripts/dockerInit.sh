#!/bin/sh
#
# dockerInit.sh
#

setup() {
	echo "Running create_user script"
	for i in {1..120};
		do
			if /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P MssqlPass123 -d master -i /init/create_user.sql -No
			then
				echo "create_user completed"
				break
			else
				if [[ $i == 120 ]]
				then
						echo "WARN: timeout in create_user"
						break
				else
						sleep 1
				fi
			fi
		done
}

setup &

/opt/mssql/bin/sqlservr
