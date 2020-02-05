#! /bin/bash

CURRENT="$PWD"
ENVPATH="${CURRENT}/venv"
INSTALL_FILE="${CURRENT}/requirements.txt"
OUTPUT="$PWD/nnioutput"
CONFIG="${ENVPATH}/bin/activate"

virtualenv -p python3 ${ENVPATH}

echo "export NNI_OUTPUT_DIR=${OUTPUT}" | tee -a ${CONFIG}
echo "Start nni env"
source ${ENVPATH}/bin/activate

echo "Go to venv folder"
cd ${ENVPATH}

echo "Install env"
pip3 install -r ${INSTALL_FILE}
cd ${CURRENT}

deactivate

