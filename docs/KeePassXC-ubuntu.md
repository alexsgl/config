 ____  __.           __________                      ____  ____________  
|    |/ _|____   ____\______   \_____    ______ _____\   \/  /\_   ___ \ 
|      <_/ __ \_/ __ \|     ___/\__  \  /  ___//  ___/\     / /    \  \/ 
|    |  \  ___/\  ___/|    |     / __ \_\___ \ \___ \ /     \ \     \____
|____|__ \___  >\___  >____|    (____  /____  >____  >___/\  \ \______  /
        \/   \/     \/               \/     \/     \/      \_/        \/ 


Download:  
https://github.com/keepassxreboot/keepassxc/releases/latest

Setup:  
https://github.com/keepassxreboot/keepassxc/wiki/Set-up-Build-Environment-on-Linux

Building:  
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

