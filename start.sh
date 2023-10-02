#ansible-playbook run.yml -K --ask-vault-pass --become-method=su --tags "essential,user"
ansible-playbook run.yml -K --ask-vault-pass --tags "dockercore,portainer"
# --become-method=su
# --tags "mount"
# -tags "nefetch"