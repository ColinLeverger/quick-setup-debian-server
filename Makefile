init:
	ansible-playbook -b --ask-sudo-pass main.yml -i hosts

update:
	ansible-playbook -b --ask-sudo-pass update.yml -i hosts

