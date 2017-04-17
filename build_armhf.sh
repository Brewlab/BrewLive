# build_armhf.sh - Build for arm board.
#
# © BrewlabTokyo 18/04/2017

export AR=arm-linux-gnueabihf-ar
export CC=arm-linux-gnueabihf-gcc
export CXX=arm-linux-gnueabihf-g++
export LINK=arm-linux-gnueabihf-g++

mkdir armhf
find . -maxdepth 1 -name "*.js" -exec cp {} armhf/ \;
find . -maxdepth 1 -name "*.json" -exec cp {} armhf/ \;
find . -maxdepth 1 -name "*.html" -exec cp {} armhf/ \;
find . -maxdepth 1 -name "*.sh" -exec cp {} armhf/ \;
npm install --build-from-source --target_arch=arm --prefix ./armhf
tar czvf armhf.tar.gz armhf
rm -rf armhf
