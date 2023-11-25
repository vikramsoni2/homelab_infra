ansible-playbook run.yml -K --ask-vault-pass --become-method=su --tags "essential,user"
ansible-playbook run.yml -K --ask-vault-pass
# ansible-playbook run.yml -K --ask-vault-pass --tags "mega"
# ansible-playbook run.yml -K --ask-vault-pass --tags "samba,neofetch,pip,dockercore"
# --become-method=su
# --tags "mount"
# -tags "nefetch"