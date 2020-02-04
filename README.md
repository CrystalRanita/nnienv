# Nnienv
microsoft nni env<br>

$ ./tools/venv.sh<br>
$ source venv/bin/activate<br>

# Run Nni

See Document in https://github.com/Microsoft/nni.git<br>

Run nni virtual env first then:<br>
$ git clone -b v1.3 https://github.com/Microsoft/nni.git<br>
$ cd nni<br>

Depands on example type
$ nnictl create --config examples/trials/mnist-tfv1/config.yml<br>
or
$ nnictl create --config examples/trials/cifar10_pytorch/config.yml

# Exit Env

$ deactivate
