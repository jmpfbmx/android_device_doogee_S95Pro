#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color
cd ../../../..
cd system/tools/mkbootimg
echo -e "${GREEN}We are gonna patch system/tools/mkbootimg${NC}"
patch -p1 < ../../../device/doogee/S95Pro/patches/system/tools/mkbootimg/0001-Don-t-eliminate-meaningless-non-zero-values.patch
cd ../../..
