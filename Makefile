init:
	ansible-playbook -b --ask-sudo-pass secure.yml -i hosts &&	ansible-playbook -b --ask-sudo-pass main.yml -i hosts

main:
	ansible-playbook -b --ask-sudo-pass main.yml -i hosts

secure:
	ansible-playbook -b --ask-sudo-pass secure.yml -i hosts

update:
	ansible-playbook -b --ask-sudo-pass update.yml -i hosts

clean:
	find . -name "*.retry" -exec rm {} \;
