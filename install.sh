#!bin/sh

#install dependencies
sudo apt-get install cmake
sleep 0.1
sudo apt-get install libavahi-compat-libdnssd-dev
sleep 0.1
sudo apt-get install libplist-dev
sleep 0.1
sudo apt-get install libssl-dev
sleep 0.5

#create build folder
mkdir build
cd build

#build programm
cmake --DCMAKE_CXX_FLAGS="-O3" --DCMAKE_C_FLAGS="-O3" ..
make