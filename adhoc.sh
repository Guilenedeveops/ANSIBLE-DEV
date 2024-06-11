#!/bin/bash
ansible ws -m command -a "sudo yum update -y"
ansible ws -m command -a "sudo yum install httpd"
ansible all -m command -a "uptime"
ansible db -m command -a "echo 'hello,friend' > /tmp/hello.txt"