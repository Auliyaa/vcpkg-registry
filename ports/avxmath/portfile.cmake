file(COPY "${CMAKE_CURRENT_LIST_DIR}/avx_mathfun.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include/avxmath")

vcpkg_install_copyright(FILE_LIST "${CMAKE_CURRENT_LIST_DIR}/COPYING")
