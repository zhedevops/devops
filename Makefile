ping:
	/home/kosm/.local/bin/ansible all -i inventory.ini -u root -m ping

cache:
	/home/kosm/.local/bin/ansible-playbook playbook-tags.yml -i inventory.ini -u root -t cache

adduser:
	/home/kosm/.local/bin/ansible-playbook playbook-tags.yml -i inventory.ini -u root -t adduser

deluser:
	/home/kosm/.local/bin/ansible-playbook playbook-tags.yml -i inventory.ini -u root -t deluser

make: cache
	/home/kosm/.local/bin/ansible-playbook playbook-tags.yml -i inventory.ini -u root -t make

skipuser:
# --check - возможность изменений
	/home/kosm/.local/bin/ansible-playbook --check playbook-tags.yml -i inventory.ini -u root --skip-tags adduser,deluser

skipmake:
	/home/kosm/.local/bin/ansible-playbook playbook-tags.yml -i inventory.ini -u root --skip-tags make
