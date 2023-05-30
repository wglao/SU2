source ~/.bashrc && source /work2/07169/wgl/frontera/su2-env/bin/activate

cd /work2/07169/wgl/frontera/SU2
mkdir $1
./meson.py $1 -Denable-autodiff=true -Denable-directdiff=true -Denable-pywrapper=true -Dwith-mpi=enabled -Dcustom-mpi=true -Dwith-omp=true -Denable-mkl=true -Denable-mpp=true -Denable-mixedprec=true -Dmklroot=$MKLROOT

cd $1
ninja -j56 install
