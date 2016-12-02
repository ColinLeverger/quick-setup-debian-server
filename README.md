# Quick Setup Debian Server

Ansible automatic setup to deploy a Debian 8 server from scratch with only one command.

Included in this setup:

* Secure of the server:
    - Create a new user with its own password,
    - Disable root authentification & password authentification (use of SSH keys),
    - Install and configure security services, including:
        + Fail2ban
        + Rkhunter
    - Change SSH default port
* Installation of Newrelic agent to monitor the server
* Installation of basic stuff for various uses:
    - htop,
    - Python,
    - ...
* Installation of Docker. This will be the only thing running in the server considered, all services will be dockerized.
* Installation of various docker services:
    - `reverse-proxy`: install & configure a reverse proxy to route all the http requests to the good dockerized service. Based on `jwilder/nginx-proxy` docker scripts. See: https://github.com/jwilder/nginx-proxy
    - `srv-voeux`: install & configure a php website used in my portfolio.
    - `seedbox`: install & configure several seedbox. Based on `kfei/docktorrent` docker scripts. See: https://github.com/kfei/docktorrent
    - `files`: install & configure several https web interface to retrieve the files downloaded by the seedbox. Based on `smdion/docker-h5ai` docker scripts. See: https://hub.docker.com/r/smdion/docker-h5ai/.
    - `jenkins`: install & configure Jenkins.
    - `gogs`: install & configure a git repo for this server. Use of gogs, see: https://github.com/gogits/gogs
    - `cadvisor`: install & configure cAdvisor to monitor all the services created. Use of cAdvisor, see: https://github.com/google/cadvisor.
    - `owncloud`: install & configure an ownCloud server.

# How to run the script

1. Identify which services you need. The file `main.yml` is used to tell Ansible which roles to play. Simply comment/uncomment the ones you don't need :)
2. Customise variables. Under `./group_vars/all/`, there is a file `vars_file.txt`.
  * Change all the variables you need inside of this file,
  * Change the extension of the file from `.txt` to `.yml`
3. Create template files needed to execution of the playbook (see next section for explanations)
4. Run the command `ansible-playbook -b --ask-sudo-pass main.yml -i hosts`
5. Grab a coffee, chill out... Because everything is done now :)

# Specific configurations
## Main configuration file
## reverse-proxy
## seedbox
## files
## gogs

# Improvements



