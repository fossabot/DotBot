#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#enter current directory
cd $DIR 
cd ..

if [ -f "Lavalink.jar" ]; then
    #start new process
    cd $DIR 
    cd ..
    node index.js
else 
    echo "Lavalink doest exist"
    #download file
    cd $DIR 
    cd ..
    curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/download/3.4/Lavalink.jar
    echo "Lavalink downloaded start it in new tab"
    npm start
fi



