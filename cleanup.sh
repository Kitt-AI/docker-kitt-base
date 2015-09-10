
apt-get remove -y --purge build-essential python-dev
apt-get autoremove -y
apt-get clean -y

rm -rf ~/.cache/pip
