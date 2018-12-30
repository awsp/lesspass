#!/usr/bin/env bash

python3 manage.py migrate
python3 manage.py collectstatic --clear --no-input
python3 wait_db.py 

exec "$@"