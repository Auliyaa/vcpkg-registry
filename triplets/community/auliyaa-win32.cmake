function(vcpkg_fixup_cmake_targets)
  # vcpkg_fixup_cmake_targets fails if the debug/share folder does not exist
  # which is the case with this triplet since we only build for release targets
  # preshot this and create an empty folder so that vcpkg_fixup_cmake_targets can rename it.
  file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/debug/share)
  file(MAKE_DIRECTORY debug/share)
  _vcpkg_fixup_cmake_targets(${ARGN})
endfunction(vcpkg_fixup_cmake_targets)

# force all vcpkg dependencies to build only in release mode
# saves time builds
set(VCPKG_BUILD_TYPE "release")

# include base triplet: x64-windows
include("${CMAKE_CURRENT_LIST_DIR}../x64-windows.cmake")
