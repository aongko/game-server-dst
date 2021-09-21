#!/bin/bash

steamcmd_dir="$HOME/steamcmd"
install_dir="$HOME/dontstarvetogether_dedicated_server"
dontstarve_dir="$HOME/.klei/DoNotStarveTogether"

function fail()
{
	echo Error: "$@" >&2
	exit 1
}

function check_for_file()
{
	if [ ! -e "$1" ]; then
		fail "Missing file: $1"
	fi
}

function check_not_exists()
{
	if [ -e "$1" ]; then
		fail "File already exists: $1"
	fi
}

echo "Cluster Name:"
read cluster_name

echo "Cluster Password:"
read -s cluster_password

echo "Generate your server token from: https://accounts.klei.com/account/game/servers?game=DontStarveTogether"
echo "Enter Server Token:"
read -s token

check_for_file "$dontstarve_dir/Cluster_Template/cluster.ini"
check_for_file "$dontstarve_dir/Cluster_Template/Master/server.ini"
check_for_file "$dontstarve_dir/Cluster_Template/Caves/server.ini"

new_cluster_dir="$dontstarve_dir/$cluster_name"

check_not_exists "$new_cluster_dir/cluster.ini"
check_not_exists "$new_cluster_dir/cluster_token.txt"
check_not_exists "$new_cluster_dir/Master/server.ini"
check_not_exists "$new_cluster_dir/Caves/server.ini"


cp -r $dontstarve_dir/Cluster_Template $new_cluster_dir
echo $token > $new_cluster_dir/cluster_token.txt

sed -i "s/TMP_CLUSTER_NAME/$cluster_name/g" $new_cluster_dir/cluster.ini
sed -i "s/TMP_CLUSTER_PASSWORD/$cluster_password/g" $new_cluster_dir/cluster.ini
