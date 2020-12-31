https://github.com/keepassxreboot/keepassxc/wiki/Set-up-Build-Environment-on-Linux

https://github.com/keepassxreboot/keepassxc/wiki/Building-KeePassXC

GPG key for verification
```
wget https://keepassxc.org/keepassxc_master_signing_key.asc
gpg --import keepassxc_master_signing_key.asc
```

Build:
```
mkdir build
cd build
cmake -DWITH_XC_ALL=ON -DCMAKE_BUILD_TYPE=Release ..
make -$(nproc)
sudo make install
```
