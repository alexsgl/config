# Install pre-requisites
sudo apt update && sudo apt install \
	build-essential
	git
	libwxbase3.0-0v5
	libwxgtk3.0-gtk3-dev
	libwxgtk3.0-gtk3-0v5
	libwxbase3.0-0v5
	ffmpeg
	intltool
	libavcodec-dev
	libavformat-dev
	libavutil-dev
	wx-common
	pkg-config
	libtool

Clone project:
git clone https://github.com/alexkay/spek.git

./autogen.sh --prefix=/usr
make
sudo make install

