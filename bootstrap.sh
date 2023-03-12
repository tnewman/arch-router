#!/bin/bash

set -e

sudo ansible-playbook -i hosts.yml site.yml
