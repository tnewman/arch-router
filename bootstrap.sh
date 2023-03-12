#!/bin/bash

set -e

sudo ansible-playbook -i hosts site.yml
