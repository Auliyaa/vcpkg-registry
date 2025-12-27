set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(VCPKG_FIXUP_ELF_RPATH ON)

# Enforce c++20 for all blue products compilation
set(VCPKG_CXX_FLAGS "-std=c++20 -march=x86-64-v3")
set(VCPKG_C_FLAGS "-march=x86-64-v3")

# Release with debug info
set(VCPKG_CXX_FLAGS_RELEASE "-g")
set(VCPKG_C_FLAGS_RELEASE "-g")

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
