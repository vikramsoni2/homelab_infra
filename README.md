# homelab_infra
Ansible playbook to setup my homelab server on Debian 12

# Tasks
It performs the following tasks:

* **Essentials** - 
Installs the essential packages listed in vars.yaml
* **Users** - 
Setup the users, add sudo package and make the user sudoer
* **Mounts** - 
Mounts all my external drives
* **Samba** - 
Setup my samba shares
* **Neofetch** - 
Install my neofetch configuration
* **Pip** - 
Install python pip package
* **Docker** - 
Setup docker on my server
* **Portainer** - 
Installs portainer 

* **Portainer Stack** - install all my docker services using portainer stack

## Portainer Stack
All my services are running in docker. This script uses docker compose available in templates folder under portainer_stack and install all stacks using portainer API.
 Currently I have following services setup:

 * cloudflare DDNS
 * homepage - for dashboard
 * jdownloader
 * jellyfin
 * jellyseer
 * nginx proxy manager
 * openbooks
 * prowlarr
 * qBitTorrent
 * radarr
 * requestrr
 * sonarr
 * wireguard vpn

The reason I am using portainer API to setup all my docker containers is because if I use docker command directly, the portainer cannot manage those containers and shows "limited: the stack was created outside portainer. Control over stack is limited". 
I wanted to manage my stacks easily with portainer, hence this approach.


# how to run it
* install debian on your server, enable ssh while setting up the debian
* on yuor laptop or other machine make sure you can connect to your server using ssh
* install python and ansible package on your laptop
* clone the repository
* modify the group_vars/all/vars.yaml file
* setup ansible secrets from secrets.yaml.example file
* run the start.sh script


