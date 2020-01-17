#!/data/data/com.termux/files/usr/bin/bash
echo "Welcome use EzTermux"
echo "Backup $PREFIX/etc/apt/sources.list to $PREFIX/etc/apt/sources.listsources.list.bak"
cp "$PREFIX/etc/apt/sources.list" "$PREFIX/etc/apt/sources.list.bak"
echo "change default repository to TUNA repository"
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' "$PREFIX/etc/apt/sources.list"
echo "if you meet some error can reboot termux and execute pkg up or dpkg --configure -a"
echo "Add more keys to touch Keyboard"
mkdir "$HOME/.termux"
echo "extra-keys = [ \
 ['ESC','|','/','HOME','UP','END','PGUP','DEL'], \
 ['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN','BKSP'] \
]" > "$HOME/.termux/termux.properties"
echo "install zsh & ohmyzsh Script by Cabbagec"
sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
