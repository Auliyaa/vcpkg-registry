file(COPY "${CMAKE_CURRENT_LIST_DIR}/sse_mathfun.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include/ssemath")

vcpkg_install_copyright(FILE_LIST "${CMAKE_CURRENT_LIST_DIR}/COPYING")
