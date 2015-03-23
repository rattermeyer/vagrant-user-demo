##!/bin/sh
yum update
yum install -y epel-release
yum install -y ansible git vim-enhanced libselinux-python
#apt-get install -y vim vim-addon-manager vim-vimoutliner vim-youcompleteme git cowsay

git clone https://github.com/rattermeyer/ansible-user-demo.git
chown -R vagrant:vagrant ansible-user-demo
chmod 0600 ansible-user-demo/roles/users/files/*

# insert ansible key
mkdir -p /home/vagrant/.ssh/ && cp /vagrant_data/ansible /home/vagrant/.ssh/id_rsa
chmod 0700 /home/vagrant/.ssh/id_rsa
touch /home/vagrant/.ssh/known_hosts
chown -R vagrant:vagrant /home/vagrant/.ssh
