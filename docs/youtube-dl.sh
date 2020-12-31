#!/bin/bash

function Download() {
    wget -O ~/Downloads/youtube-dl https://github.com/ytdl-org/youtube-dl/releases/latest/download/youtube-dl
    wget -O ~/Downloads/youtube-dl-SHA2-SHA512SUMS https://github.com/ytdl-org/youtube-dl/releases/latest/download/SHA2-512SUMS
}

function Verify() {
    cd ~/Downloads && sha512sum --ignore-missing -c youtube-dl-SHA2-SHA512SUMS \
     | grep "youtube-dl: OK"
}

function Move() {
    mv -f youtube-dl ~/.local/bin/youtube-dl \
     && chmod +x ~/.local/bin/youtube-dl \
     && touch ~/.local/bin/youtube-dl
}

Download
Verify && Move
echo "Done".

