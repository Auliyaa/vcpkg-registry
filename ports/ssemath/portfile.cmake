vcpkg_download_distfile(
  SSE_MATHFUN_H
  URLS http://gruntthepeon.free.fr/ssemath/sse_mathfun.h
  FILENAME sse_mathfun.h
  SHA512 b01390676fa96a2cbb3da78d5c231f78cc508596dfa5749ecc3ccb5e36fed4e7c35f324caa17f94838957c06f61fac7519af273e7a021c19334fbf8f428a857f
)

file(COPY "${SSE_MATHFUN_H}" DESTINATION "${CURRENT_PACKAGES_DIR}/include/ssemath")

vcpkg_install_copyright(FILE_LIST "${CMAKE_CURRENT_LIST_DIR}/COPYING")
