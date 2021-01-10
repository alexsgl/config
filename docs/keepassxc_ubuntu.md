```
 ____  __.           __________                      ____  ____________  
|    |/ _|____   ____\______   \_____    ______ _____\   \/  /\_   ___ \ 
|      <_/ __ \_/ __ \|     ___/\__  \  /  ___//  ___/\     / /    \  \/ 
|    |  \  ___/\  ___/|    |     / __ \_\___ \ \___ \ /     \ \     \____
|____|__ \___  >\___  >____|    (____  /____  >____  >___/\  \ \______  /
        \/   \/     \/               \/     \/     \/      \_/        \/ 

```

Download:  
https://github.com/keepassxreboot/keepassxc/releases/latest
Setup:  
https://github.com/keepassxreboot/keepassxc/wiki/Set-up-Build-Environment-on-Linux
Building:  
https://github.com/keepassxreboot/keepassxc/wiki/Building-KeePassXC

GPG key for verification
```
wget -4 https://keepassxc.org/keepassxc_master_signing_key.asc
gpg --import keepassxc_master_signing_key.asc
```

Install packages:
```
sudo apt-get install -y \
  build-essential cmake g++ \
  qtbase5-dev qtbase5-private-dev qttools5-dev \
  qttools5-dev-tools libqt5svg5-dev libgcrypt20-dev libargon2-dev \
  libqrencode-dev libsodium-dev zlib1g-dev asciidoctor \
  libxi-dev libxtst-dev libqt5x11extras5-dev libyubikey-dev \
  libykpers-1-dev libquazip5-dev libreadline-dev
```




Build:
```
tar xf keepassxc-*-src.tar.xz
cd keepassxc-*
mkdir build
cd build
cmake -DWITH_XC_ALL=ON -DCMAKE_BUILD_TYPE=Release ..
make -$(nproc)
sudo make install
```

