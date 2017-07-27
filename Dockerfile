FROM ubuntu:latest

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y bzip2 \
                       wget \
                       gcc \
                       vim \
                       libgl1-mesa-glx \
                       libglu1-mesa \
                       libsm6 \
                       libxtst6 \
                       libxt6 \
                       git; \
    wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh; \
    chmod +x Miniconda2-latest-Linux-x86_64.sh; \
    bash Miniconda2-latest-Linux-x86_64.sh -b -p $HOME/miniconda; \
    echo "export PATH=\$PATH:/root/miniconda/bin" >> /root/.bashrc; \
    export PATH=$PATH:/root/miniconda/bin; \
    conda install vtk \
                  numpy \
                  sympy \
                  scipy \
                  matplotlib; \
    pip install pyvtk; \
    rm Miniconda2-latest-Linux-x86_64.sh; \
    mkdir /projects; \
    cd /projects; \
    git clone https://github.com/williamhunter/topy; \
    cd topy/topy; \
    python setup.py install; \
    git clone https://github.com/PythonOptimizers/pysparse.git; \
    cd pysparse; \
    python setup.py install; \
    cd ../..; \
    wget https://raw.githubusercontent.com/williamhunter/topy/master/scripts/optimise.py; \
    echo "cd /projects/topy" >> /root/.bashrc;

