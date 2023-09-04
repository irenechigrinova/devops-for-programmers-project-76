setup-servers:
	ansible-galaxy install -r requirements.yml

deploy-app:
	ansible-playbook -v -i inventory.ini --ask-vault-pass playbook.yml --ask-pass -kK

edit-vault:
	ansible-vault edit ./group_vars/webservers/vault.yml

install-packages:
	ansible-playbook -v -i inventory.ini --ask-vault-pass playbook.yml --ask-pass -kK -t packages

install-datadog:
	ansible-playbook -v -i inventory.ini --ask-vault-pass playbook.yml --ask-pass -kK -t datadog

manage-app:
	ansible-playbook -v -i inventory.ini --ask-vault-pass playbook.yml --ask-pass -kK -t app