gc(){
        if [ -z "$1" ]
        then
                echo "Provide msg buddy";
                return;
        fi;

        git add *;
        git commit -m "$1";
}

pushAll(){
	remotes=( $(git remote -v) )
	remotes=($(echo "${remotes[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
	for i in "${remotes[@]}"
	do
		if [[ "$i" == *"https"* || "$i" == *"http"* || "$i" == *"git@"* ]]
			then
				echo -e "\n=========================\n=========================\n========================="
				echo "$i"
				git push "$i" master
		fi
	done
}

ss(){
        git status;
}

lol(){
        git log --oneline;
}

remote(){
        git remote -v;
}

cls(){
        clear;
}

qq(){
        exit;
}


proxyOn(){
        git config --global http.proxy fodev.org:8118;
        git config --global https.proxy fodev.org:8118;
}

proxyOff(){
        git config --global --unset http.proxy
        git config --global --unset https.proxy
}

gcgl(){
        git config --global --list
}

cb(){
	if [ -z "$1" ]
        then
                echo "remember to provide new branch name!";
                return;
        fi;

	git checkout -b $1;
}

br(){
	git branch;
}
