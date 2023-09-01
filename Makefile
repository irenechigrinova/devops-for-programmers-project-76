setup-servers:
	ansible-galaxy install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy collection install datadog.dd

deploy-app:
	ansible-playbook -v -i inventory.ini --ask-vault-pass playbook.yml --ask-pass -kK

edit-vault:
	ansible-vault edit ./group_vars/webservers/vault.yml