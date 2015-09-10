
apt-get install -y libopenblas-base libopenblas-dev 

apt-get install -y python-numpy python-scipy 

update-alternatives  --set libblas.so.3 /usr/lib/openblas-base/libblas.so.3; update-alternatives --set liblapack.so.3 /usr/lib/lapack/liblapack.so.3

apt-get install -y python-matplotlib 

pip install -U scikit-learn 

python -c "import numpy, scipy, sklearn"

