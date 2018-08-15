#!/bin/bash
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils autoconf
sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
sudo apt-get install -y libminiupnpc-dev
sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get install -y libqrencode-dev
sudo apt-get install -y curl
wget https://github.com/zeromq/libzmq/releases/download/v4.2.2/zeromq-4.2.2.tar.gz
tar xvzf zeromq-4.2.2.tar.gz
sudo apt-get update
sudo apt-get install -y libtool pkg-config build-essential autoconf automake uuid-dev
cd zeromq-4.2.2
./configure
sudo make install
sudo ldconfig
cd ..
./autogen.sh
./configure
make -j 4
