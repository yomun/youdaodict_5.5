# youdaodict_5.5
![Screencast](https://2.bp.blogspot.com/-a1ldr3X2U1s/WZAIrNamPxI/AAAAAAAAAjw/CGVeNEUzjWk2pK71C4PwuMIzRFwc9ROawCLcBGAs/s1600/youdao.png)
<br><br>
<b>[ 有道词典 v1.1.1 ] ( 支持 PyQt 5.5 或以上 )</b><br><br>
这个有道词典最新源码是从 Deepin 15.4.1 (youdao-dict_1.0.8-1_amd64.deb) 取出, 然后重新打包成 deb<br>
它支持 PyQt 5.6 和 SIP 4.18.1 版本 (Ubuntu 16.10 / Fedora 24 / OpenSUSE 42.2 等开始的发行版)<br>
http://packages.deepin.com/deepin/pool/main/y/youdao-dict/<br>
<br>
先安装所有依赖软件包<br>
<br>
<b>[ Ubuntu 16.04 - 17.10 / Debian 9.1 / Linux Mint 18.2 / Zorin OS 12.1 ]</b><br>
<br>
$ su<br>
$ apt install python3 python3-dbus python3-requests python3-lxml python3-pil python3-xdg python3-xlib<br>
$ apt install python3-pyqt5 python3-pyqt5.qtmultimedia python3-pyqt5.qtquick python3-pyqt5.qtwebkit<br>
<br>
$ apt install gir1.2-appindicator3-0.1 qml-module-qtgraphicaleffects qml-module-qtquick-controls<br>
$ apt install libqt5multimedia5-plugins ttf-wqy-microhei<br>
$ apt install tesseract-ocr tesseract-ocr-eng tesseract-ocr-chi-sim tesseract-ocr-chi-tra<br>
<br>
这个就是自己制作给 Ubuntu 用的 DEB 包, 比有道词典官网发布还快..<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb<br>
$ dpkg -i youdao-dict_1.1.1-0?ubuntu_amd64.deb<br>
<br>
<b>[ Fedora 26 - 27 ]</b><br>
<br>
$ touch ~/.Xauthority<br>
$ su<br>
$ dnf install python python3 python-xlib python3-pip -y<br>
$ pip3 install --upgrade pip<br>
$ pip3 install python3-xlib<br>
<br>
$ dnf install python3-requests python3-lxml python3-pillow python3-qt5 python3-qt5-devel python3-qt5-webkit<br>
$ dnf install libappindicator-gtk3 qt5-qtgraphicaleffects qt5-qtquickcontrols qt5-qtbase-devel<br>
$ dnf install tesseract-langpack-chi_sim tesseract-langpack-chi_tra tesseract-langpack-enm tesseract-devel<br>
<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb<br>
$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb<br>
$ tar -Jxvf data.tar.xz  -C /<br>
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary<br>
<br>
<b>[ OpenSUSE Tumbleweed ]</b><br>
<br>
$ su<br>
$ zypper install python python3 python-xlib python3-pip<br>
$ pip install pyxdg<br>
$ pip3 install --upgrade pip<br>
$ pip3 install python3-xlib<br>
<br>
$ zypper install python3-requests python3-lxml python3-Pillow python3-qt5 python3-qt5-devel<br>
$ zypper install typelib-1_0-AppIndicator3-0_1 libqt5-qtgraphicaleffects libqt5-qtquickcontrols<br>
$ zypper install tesseract-ocr-traineddata-chinese_simplified tesseract-ocr-traineddata-chinese_traditional<br>
$ zypper install tesseract-ocr-traineddata-english tesseract-ocr-devel<br>
<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb<br>
$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb<br>
$ tar -Jxvf data.tar.xz  -C /<br>
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary<br>
$ xhost + && youdao-dict<br>
<br>
遇到 Xlib.error.DisplayConnectionError: Can't connect to display “:0”: b'No protocol specified\n' 问题<br>
所以需要 xhost + 指令, 这是 python-xlib 引起的 bugs<br>
<br>
<b>[ Antergos 17.8 / Manjaro 17.0.4 ]</b><br>
<br>
$ su<br>
<br>
$ pacman -S python python-xlib python-xdg python-dbus<br>
$ pacman -S python-requests python-lxml python-pillow python-pyqt5 pyqt5-common<br>
$ pacman -S libappindicator-gtk3 qt5-graphicaleffects qt5-quickcontrols qt5-webkit qt5-base<br>
$ pacman -S wqy-microhei binutils<br>
$ pacman -S tesseract tesseract-data-eng tesseract-data-chi_sim tesseract-data-chi_tra<br>
<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb<br>
$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb<br>
$ tar -Jxvf data.tar.xz -C /<br>
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary<br>
<br>
<b>[ Manjaro 17.0.2 ]</b><br>
<br>
安装方法跟以上 Antergos 一样, 但运行 youdao-dict 可能会出现 Cannot mix incompatible Qt library (version 0x50701..<br>
这样的错误, 解决方法是重安装 qt5-styleplugins (安装 aurget 以重安装)<br>
<br>
$ pacman -Rsn qt5-styleplugins<br>
$ pacman -Syyu<br>
<br>
$ pacman -S wget base-devel<br>
<br>
$ su username<br>
<br>
$ wget https://github.com/pbrisbin/aurget/archive/v4.7.2.tar.gz<br>
$ tar -xvf v4.7.2.tar.gz && cd aurget-4.7.2 && sudo make install<br>
<br>
$ aurget -S qt5-styleplugins<br>
<br>
<b>[ Solus OS 3 ]</b><br>
<br>
$ su<br>
<br>
$ pip3 install --upgrade pip<br>
$ pip3 install pyxdg<br>
<br>
$ eopkg install python3 python3-dbus python-requests python-lxml python-pillow python3-xlib<br>
$ eopkg install python3-qt5 qt5-multimedia qt5-webkit<br>
$ eopkg install libappindicator qt5-graphicaleffects qt5-quickcontrols<br>
$ eopkg install tesseract tessdata<br>
<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb<br>
$ eopkg install binutils<br>
$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb<br>
$ tar -Jxvf data.tar.xz -C /<br>
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary<br>
<br>
<br>
<b>[ 有道词典 v1.1.0 ] ( 只支持 PyQt 5.5 )</b><br>
<br>
http://jasonmun.blogspot.my/2016/06/linux-youdao-dict.html<br>
http://cidian.youdao.com/index-linux.html<br>
<br>
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.0-0~ubuntu_amd64.deb<br>
<br>
Ubuntu 如果要有道词典发声，还需要<br>
$ sudo apt install ubuntu-restricted-extras<br>
<br>
<b>[ Uninstall ] ( 做给以上用 tar 指令来安装的 Linux 分发版 )</b><br>
<br>
$ rm -rf ~/.config/youdao-dict<br>
$ rm -rf ~/.cache/youdao-dict<br>
<br>
$ su<br>
$ wget https://raw.githubusercontent.com/yomun/youdaodict_5.5/master/delete_src.sh<br>
$ sh delete_src.sh<br>
<br>
<b>[ 图标不能显示问题 ]</b><br>
<br>
$ su<br>
$ rm -rf /usr/share/icons/hicolor/icon-theme.cache<br>
