#!/usr/bin/env bash
set -ex
exec > /c/Users/sp1d3/Downloads/openvpn/build.log 2>&1
echo "=== BUILD START: $(date)"
# Full system update and required packages
pacman -Syu --noconfirm || true
pacman -Su --noconfirm || true
pacman -S --needed --noconfirm base-devel mingw-w64-ucrt-x86_64-toolchain mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-openssl mingw-w64-ucrt-x86_64-lzo mingw-w64-ucrt-x86_64-lz4 mingw-w64-ucrt-x86_64-pkg-config mingw-w64-ucrt-x86_64-libcap-ng ninja || true

export PATH=/ucrt64/bin:/mingw64/bin:$PATH
cd /c/Users/sp1d3/Downloads/openvpn

# Clean and build
make clean || true
autoreconf -i -v -f || true
./configure --host=x86_64-w64-mingw32 || true
make -j$(nproc) || true

# Collect artifacts
mkdir -p /c/Users/sp1d3/Downloads/openvpn/build_output
find . -type f -name "openvpn.exe" -exec cp -v {} /c/Users/sp1d3/Downloads/openvpn/build_output/ \; || true
find . -type f -name "tapctl.exe" -exec cp -v {} /c/Users/sp1d3/Downloads/openvpn/build_output/ \; || true

echo "=== BUILD END: $(date)"
