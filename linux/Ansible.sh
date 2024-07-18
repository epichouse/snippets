# Create Role
ansible-galaxy init {Role Name}

# Run Playbook
ansible-playbook ansible-playbook {Playbook Path}.yml --extra-vars "ansible_sudo_pass={Sudo Pass if Required}}" -i {Inventory File}.yml