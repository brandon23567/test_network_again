#!/usr/bin/env bash
# exit on error
set -o errexit

pip3 install -r requirements.txt

python3.12 manage.py collectstatic --no-input
python3.12 manage.py migrate