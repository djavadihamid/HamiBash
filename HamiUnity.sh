unity(){
	if [ -z "$1" ]
		then
			Help;
	fi;

	if [ $1 == "--init" ];
		then
			InitFolders;
	fi;

}

Help(){
	echo "";
	echo "==================";
	echo "Unity Commands: ";
	echo "==============================================================";
	echo "Unity --init	=>	Initializing folders for new projects";
}

InitFolders(){
	mkdir Sprites;
	mkdir Materials;
	mkdir Scripts;
	mkdir Animations;
	mkdir Audio;
	mkdir Fonts;
	mkdir Plugins;
	mkdir Prefabs;
	mkdir Resources;
	mkdir StreamingAssets;

	cd Audio;
	mkdir SFXs;
	mkdir Musics;
	cd ../
}
