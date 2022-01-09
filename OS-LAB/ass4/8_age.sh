clear
echo "date of birth(dd/mm/yyyy)"
read dob
IFS="/" #IFS- Inter File Separator
set $dob
d=$1
m=$2
y=$3
#echo $d
#echo $m
#echo $y 
d1=`date +%d`
m1=`date +%m`
y1=`date +%Y`

#echo $d1
#echo $y1
#echo $m1
dd=`expr $d1 - $d`
mm=`expr $m1 - $m`
yy=`expr $y1 - $y`

if [ $dd -lt 0 ]
then 
  mm=`expr $mm - 1`
  dd=`expr $dd + 30`
fi 

if [ $mm -lt 0 ]
then
  yy=`expr $yy - 1`
  mm=`expr $mm + 12`
fi  
echo "age is $yy years and $mm months and $dd days old"