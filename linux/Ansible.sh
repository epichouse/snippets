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



## ad hoc example to remove a file on all hosts
ansible linux -m ansible.builtin.file -a "dest=/etc/apt/sources.list.d/netdata-edge.list state=absent" --become --ask-vault-pass
# Uninstall a program
ansible linux -m apt -a "name=snmpd state=absent" --become

# Get all facts for a given host
ansible {hostname/hostgroup} -m ansible.builtin.setup --ask-vault-pass