createController(){
        if [ -z "$1" ]
                then
                        echo "remember to provide controller name";
                        return;
        fi;

        dotnet-aspnet-codeGenerator controller -name "$1"
}
