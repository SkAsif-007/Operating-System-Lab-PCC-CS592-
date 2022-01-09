#error
clear
echo "Enter 1st,2nd,3rd Sides of Triangle"
read a b c
if [ `expr $a + $b ` -gt $c ]
then 
 s=`echo "scale=3; ($a+$b+$c)/2" | bc` 
area=`echo "scale=3; sqrt($s*($s-$a)*($s-$b)*($s-$c))" | bc` 

echo "Area of Triangle=$area"
else 
  echo "Enter Correct value for Triangle"
fi