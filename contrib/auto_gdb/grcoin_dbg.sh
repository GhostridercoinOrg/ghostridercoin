#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.grcoincore/grcoind.pid file instead
grcoin_pid=$(<~/.grcoincore/testnet3/grcoind.pid)
sudo gdb -batch -ex "source debug.gdb" grcoind ${grcoin_pid}
