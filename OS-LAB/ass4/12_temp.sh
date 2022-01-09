#doubt
clear
f=data.txt
echo $f
if [ -f $f ]
then
  exec<$f
  while read line
  do
    set `echo $line`
    if [ $2 -lt 15 ]
    then
      w="very cold"
    elif [ $2 -ge 15 ] &&  [ $2 -lt 25 ]; then
      w="cold"
    elif [ $2 -ge 25 ] && [ $2 -lt 35 ]; then
      w="hot"
    else
      w="very hot" 
    fi
    echo "$1  $2  $w" >> out2
  done  
fi