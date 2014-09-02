# !/bin/bash


OUTPUT=$(lsof -i tcp:$1)
set -- "$OUTPUT" 
IFS=" "; declare -a Array=($*)  
PROCESS="${Array[9]}"
$(sudo -u $USER kill -9 ${PROCESS})
echo "Proceso eliminado"
