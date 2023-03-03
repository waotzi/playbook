#! /bin/sh

ansible-playbook /root/playbook/$1.yml --extra-vars "artifact_url=$2"
