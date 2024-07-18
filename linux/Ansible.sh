# Create Role
ansible-galaxy init {Role Name}

# Run Playbook
ansible-playbook ansible-playbook {Playbook Path}.yml --extra-vars "ansible_sudo_pass={Sudo Pass if Required}}" -i {Inventory File}.yml

### Adhoc Commmands

# List Hosts in inventory group global
ansible global --list-hosts

# execute ansible module ping on all hosts in group global
ansible global -m ping

# execute the command "echo test" on all hosts in group global
ansible global -a "echo test"