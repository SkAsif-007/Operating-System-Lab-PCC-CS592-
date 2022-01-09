clear
echo "Enter two numbers"
read x y
temp=`expr $x \* $y `
while [ $x -ne $y ]
do
if [ $x -gt $y ]
then
  x=`expr $x - $y`
else
  y=`expr $y - $x`
fi
done

echo GCD= $y
echo LCM= `expr $temp / $y`