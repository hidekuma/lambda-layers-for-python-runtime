#!/bin/bash

cd /home/venv
python3 -m virtualenv -p /usr/bin/python3 py3
source /home/venv/py3/bin/activate

pip3 install Pillow -t /home/dist/python
pip3 install qrcode -t /home/dist/python

rm -rf /home/dist/python/__pycache__

cd /home/dist
zip -r output.zip ./python

