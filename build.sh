#!/usr/bin/env bash
# exit on error
set -o errexit

# Install modules 
python -m pip install --upgrade pip
pip install -r requirements.txt

# Collect Static
python manage.py collectstatic --no-input

# Migrate DB 
python manage.py makemigrations
python manage.py migrate
