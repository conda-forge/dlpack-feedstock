cmake ${CMAKE_ARGS} \
  -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_PREFIX_PATH=$PREFIX \
  -DBUILD_DOCS=OFF \
  -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib

cmake --build . --parallel $CPU_COUNT
cmake --install .

