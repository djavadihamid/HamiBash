createController(){
        if [ -z "$1" ]
                then
                        echo "Name bd dada";
                        return;
        fi;

        dotnet-aspnet-codeGenerator controller -name "$1"
}
