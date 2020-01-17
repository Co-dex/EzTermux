#!/data/data/com.termux/files/usr/bin/bash
echo "Welcome use EzTermux"
echo "Backup '$PREFIX/etc/apt/sources.list' to '$PREFIX/etc/apt/sources.listsources.list.bak'"
echo
cp "$PREFIX/etc/apt/sources.list" "$PREFIX/etc/apt/sources.list.bak"
echo "change default repository to TUNA repository"
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.ustc.edu.cn/termux stable main@' '$PREFIX/etc/apt/sources.list'
echo "if you meet some error can reboot termux and execute pkg up or dpkg --configure -a"
pkg up
echo "Add more keys to touch Keyboard"
echo "extra-keys = [ \
 ['ESC','|','/','HOME','UP','END','PGUP','DEL'], \
 ['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN','BKSP'] \
]" > "$HOME/termux.properties"
echo "install zsh & ohmyzsh Script by Cabbagec"
curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh -o eztermux.tem.sh
sed -i "/^exit/i\cp '$HOME/termux.properties' '$HOME/.termux'" eztermux.tem.sh
sed -i "/^exit/i\rm '$HOME/termux.properties'" eztermux.tem.sh
sed -i "/^exit/i\echo done" eztermux.tem.sh
sh eztermux.tem.sh
rm eztermux.tem.sh
exit
