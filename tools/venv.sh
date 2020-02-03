#! /bin/bash

CURRENT=$PWD
ENVPATH=${CURRENT}/venv
INSTALL_FILE=${CURRENT}/requirements.txt
virtualenv -p python3 ${ENVPATH}

echo "Start nni env"
source ${ENVPATH}/bin/activate

echo "Go to venv folder"
cd ${ENVPATH}

echo "Install env"
pip3 install -r ${INSTALL_FILE}
cd ${CURRENT}

deactivate
