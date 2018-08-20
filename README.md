e-Sport Betting Coin (clone of LightPayCoin) integration/staging repository
======================================


***

Quick installation of the ESportBettingCoin daemon under linux. See detailed instructions there [build-unix.md](build-unix.md)

Installation of libraries (using root user):

    add-apt-repository ppa:bitcoin/bitcoin -y
    apt-get update
    apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
    apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
    apt-get install -y libdb4.8-dev libdb4.8++-dev

Cloning the repository and compiling (use any user with the sudo group):

    cd
    git clone https://github.com/BlockchainFor/ESportBettingCoin.git
    cd ESportBettingCoin
    ./autogen.sh
    ./configure
    sudo make install
    cd src
    sudo strip esportbettingcoind
    sudo strip esportbettingcoin-cli
    sudo strip esportbettingcoin-tx
    cd ..

Running the daemon:

    esportbettingcoind 

Stopping the daemon:

    esportbettingcoin-cli stop

Demon status:

    esportbettingcoin-cli getinfo
    esportbettingcoin-cli mnsync status

All binaries for different operating systems, you can download in the releases repository:

https://github.com/BlockchainFor/ESportBettingCoin/releases

P2P port: 38815, RPC port: 38816
-
Distributed under the MIT software license, see the accompanying file COPYING or http://www.opensource.org/licenses/mit-license.php.
