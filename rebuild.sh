#!/bin/bash

./kill.sh
python3 setup.py build
sudo python3 setup.py install
