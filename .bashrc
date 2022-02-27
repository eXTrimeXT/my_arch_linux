source ~/.bashrc_colors
source ~/.functions
source ~/.hi
source ~/.bash_alias

LINE=$BGreen
NAME=$BRed
TEXT=$IWhite
LOAD=$Red

PS1="
$LINE┌──$NAME eXTrime$BGreen@$BCyan\h$RstColor$RstColor $IYellow[\$PWD]$RstColor \n$LINE└─> $TEXT"
