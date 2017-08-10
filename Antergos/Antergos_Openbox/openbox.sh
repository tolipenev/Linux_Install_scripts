
set -xe
backupfile="backup"
backup(){
	if [ ! -d ./$backupfile ]; then
		mkdir $backupfile
	fi
	cp -Rf ~/.config/openbox ./$backupfile
	cp -Rf ~/.config/tint2 ./$backupfile
	cp -Rf ~/.config/lxterminal ./$backupfile
	cp -Rf ~/.config/pcmanfm ./$backupfile
	cp -Rf ~/.config/compton.conf ./$backupfile
}
restore(){
	rm -rf .config/tint2
	rm -rf .config/openbox
	rm -rf .config/lxterminal
	rm -rf .config/pcmanfm
	cp -Rf ./$backupfile/openbox ~/.config
	cp -Rf ./$backupfile/tint2 ~/.config 
	cp -Rf ./$backupfile/lxterminal ~/.config
	cp -Rf ./$backupfile/pcmanfm ~/.config
	cp -Rf ./$backupfile/compton.conf ~/.config
}


if [ $1 == "b" ];then
backup
elif [ $1 == "r" ];then
restore
fi