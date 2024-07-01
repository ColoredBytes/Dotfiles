mcd () {
    mkdir -pv $1 && cd $1
} # This function will create a dir and then change into it. 

hg() {
    history | grep "$1";
} # Grep (search) through your history for previous run commands 
