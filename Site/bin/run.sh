#!/bin/bash
#
# Run the flask development server
# We set the debug flag here so that we don't have to set it in the code and
#   won't risk having it on in production
# Reference: http://flask.pocoo.org/docs/0.12/cli/#debug-flag
#
## export PYTHONPATH="..:${PYTHONPATH}"
export FLASK_DEBUG=1
export FLASK_APP=groja.py

GROJA_MAIL_FROM=no_reply@groja.com
GROJA_MAIL_TO=conversion@groja.com

cd .. && python3 -m flask run --port=5000
