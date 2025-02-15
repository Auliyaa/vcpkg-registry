vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO sekrit-twc/zimg
  REF "release-3.0.5"
  SHA512 85467ec9fcf81ea1ae3489b539ce751772a1dab6c6159928b3c5aa9f1cb029f0570b4624a254d4620886f3376fbf80f9bb829a88c3fe543f99f38947951dc500
  HEAD_REF master
)

vcpkg_configure_make(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS_DEBUG
    --enable-debug
)

vcpkg_install_make()
vcpkg_fixup_pkgconfig()
vcpkg_copy_pdbs()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYING")