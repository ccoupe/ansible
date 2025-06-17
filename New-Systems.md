# Do by hand tasks
1. Hardware install, Create bootable drive. Boot it
2. Install OS
3. set hostname, user name
4. Setup networking (wifi and/or enet)
5. Re-Partition disk if needed
6. Install ssh and sshd
    + `sudo apt install ssh`
    + `systemctl enable --now ssh`
    + `ssh-keygen`
    + test ssh login from new system. 
    + test ssh login to new system
 7. Root
	+ sudo visudo
    + sudo -s; cd; ssh-keygen; ssh-copy-id glados@terra.local
 # Tasks - Ansible possibilities
- MDNS `sudo systemctl enable --now avahi-daemon`
- apt install htop neofetch
- sudo apt install nfs-common
- /etc/fstab - nfs mounts: for each [bronco.local:/home/ccoupe/Projects, terra.local:/archives]
	- create mount points
	- modify /etc/fstab - include systemd mount info as desired.
	- test `mount -a`
- Root setup
	- backup (Makefile)
	- pspings (Makefile)
	- crontab
	- restart-node (Makefile)
- exim4 email to smarthost
- mosquitto-client(s)
- Chrony
	- sudo apt install chrony
	- sudo edit /etc/chrony/chrony.conf
	- sudo systemctl enable chrony. Then restart it.
	- /usr/local/lib/pspings  edit json to add  `/usr/sbin/chronyd`
- Ollama (as daemon, not container)
    *  `ollama run qwen3:0.6b --verbose`
# Dockers
portainer
ollama ?
mlface ?
mlshapes ?
