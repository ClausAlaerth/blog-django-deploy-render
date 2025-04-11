#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# export DJANGO_SUPERUSER_USERNAME="clausalaerth"
# export DJANGO_SUPERUSER_EMAIL="lukhasaquino@gmail.com"
# export DJANGO_SUPERUSER_PASSWORD="4udacious_4_Aquin0"
# python manage.py createsuperuser --no-input

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py makemigrations

# Apply any outstanding database migrations
python manage.py migrate