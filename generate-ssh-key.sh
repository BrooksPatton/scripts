#!/bin/bash

echo "Enter your email for ssh"
read EMAIL
ssh-keygen -t rsa -b 4096 -C "$EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
