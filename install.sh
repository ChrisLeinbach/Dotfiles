#!/usr/bin/env bash

script_path=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git -C $script_path pull origin main
rsync -avh --no-perms $script_path/content/ ~

source ~/.bashrc
