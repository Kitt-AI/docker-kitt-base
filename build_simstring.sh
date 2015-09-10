
apt-get install -y wget git automake swig
cd /tmp
git clone https://github.com/chokkan/simstring.git
cd simstring
./autogen.sh; ./configure; make; make install; cd swig/python/; ./prepare.sh --swig; python setup.py build_ext; python setup.py install

python -c "import simstring"

cd /
rm -rf /tmp/simstring
apt-get remove -y --purge wget git automake swig

