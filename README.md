# vagrant-user-demo

# Pre-Requisites
* Vagrant installation
* VirtualBox installation
* 4 GB free RAM for VirtualBoxes

# Installation

	git clone https://github.com/rattermeyer/vagrant-user-demo.git
	cd vagrant-user-demo
	vagrant up
	
# Running the Examples

Login into the controlmachine. You can either issue vagrant ssh or use ssh to login to the machine.
Then change into `ansible-user-demo` and run `ansible -i inventory all -m ping` to test you can ping all other machines.
Accept the ssh keys. After that you can run `ansible-playbook -s -i development site.yml`.

For details see [ansible-user-demo](https://github.com/rattermeyer/ansible-user-demo.git)




