# Setup DontStarveTogether Dedicated Server

## Create VM

Minimum requirements:

- CPU: 1 (for setup), 2 (for playing)
- Memory: 2GB
- Disk: 10GB

## First Setup and dependencies

Enter sudo mode `sudo su`.

```bash
dpkg --add-architecture i386
apt update
apt upgrade
apt install -y locales wget screen htop
apt install -y lib32gcc1 lib32stdc++6 libcurl4-gnutls-dev:i386
dpkg-reconfigure locales
exit
```

Select en_US.UTF-8 by using space key, then hit Enter to confirm the selection.
Then select en_us.UTF-8 as default locale for the system environment

## Installing and SteamCMD

```bash
mkdir -p ~/steamcmd
cd ~/steamcmd
wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
tar -xvzf steamcmd_linux.tar.gz
rm steamcmd_linux.tar.gz
```

## Create directories

```bash
mkdir -p ~/.klei/DoNotStarveTogether/
```

## Copy files to server

```bash
scp -r run_dedicated_servers.sh $HOST_USER@$HOST_IP:/home/$HOST_USER/
scp -r generate_server.sh $HOST_USER@$HOST_IP:/home/$HOST_USER/
scp -r Cluster_Template $HOST_USER@$HOST_IP:/home/$HOST_USER/.klei/DoNotStarveTogether/
scp -r dedicated_server_mods_setup.lua $HOST_USER@$HOST_IP:/home/$HOST_USER/
```

### Run for the first time

This will generate several directories and files.

Make sure to change the cluster name (CLUSTER_NAME)

```bash
cd ~/
./generate_server.sh
./run_dedicated_servers.sh CLUSTER_NAME
```

It's recommended to run the command above under a terminal multiplexer such as `screen`.

Using screen, create a new session with `screen -S dst`.

Where `dst` is a name that you could change to anything.

To detach, use `Ctrl+A, D`.

To reattach, `screen -r dst`.

### Setup Mods

```bash
mv dedicated_server_mods_setup.lua ~/dontstarvetogether_dedicated_server/mods/
```

The template only enable several mods. To install/uninstalll mods, update `dedicated_server_mods_setup.lua`. To enable/disable mods, update the `modoverrides.lua` in both Master and Caves.

```bash
vi ~/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
vi ~/.klei/DoNotStarveTogether/CLUSTER_NAME/Master/modoverrides.lua
vi ~/.klei/DoNotStarveTogether/CLUSTER_NAME/Caves/modoverrides.lua
```

