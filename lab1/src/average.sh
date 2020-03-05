#!/bin/bash
# My first script

#creating a variable
title="Website title"

#contants
RIGHT_NOW=$(date +"%x %r %Z")

##### FUNCTIONS
system_info(){
    echo "function system_info"
    echo "--------------------------------------------------------"
    echo "--------------------------------------------------------"
}
show_uptime(){
    echo " <h2> uptime function </h2>"
    echo "<pre>"
    uptime
    echo "</pre>"
    echo "--------------------------------------------------------"
    echo "--------------------------------------------------------"
}
home_space(){
    echo "function home_space"
    echo "<pre>"
    du -s /home/* | sort -nr
    echo "</pre>"
    echo "--------------------------------------------------------"
    echo "--------------------------------------------------------"
}
drive_space(){
    echo " <h2> function drive_space </h2>"
    echo "<pre>"
    df
    echo "</pre>"
    echo "--------------------------------------------------------"
    echo "--------------------------------------------------------"
}

### main
cat << _EOF_
<html>
     <head>
        <title>
            $title
        </title>
    </head>
    <body>
        <h1> $title blandit aliquet elit $RIGHT_NOW </h1>
        <p>
            $(system_info)
            $(show_uptime)
            $(drive_space)
            $(home_space)
        </p>
    </body>
 </html>
_EOF_