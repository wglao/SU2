source ~/.bashrc && source /work2/07169/wgl/frontera/su2-env/bin/activate

cd /work2/07169/wgl/frontera/SU2
mkdir $1
./meson.py $1 -Denable-autodiff=true -Denable-directdiff=true -Denable-pywrapper=true  -Dpython.platlibdir=/work2/07169/wgl/frontera/su2-env/lib/python3.9/site-packages/ -Dpython.purelibdir=/work2/07169/wgl/frontera/su2-env/lib/python3.9/site-packages/ -Dwith-mpi=enabled -Dcustom-mpi=true -Dwith-omp=true -Denable-mkl=true  -Dmkl_root=$MKLROOT -Denable-mpp=true -Denable-mixedprec=true --prefix=/work2/07169/wgl/frontera/su2-env

cd $1
ninja -j56 install
