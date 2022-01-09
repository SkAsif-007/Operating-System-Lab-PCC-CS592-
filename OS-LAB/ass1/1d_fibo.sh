clear
echo "Enter Number"
read n
a=0
b=1
echo "Fibonacci Series is: "
for (( i=0; i<n; i++ ))
do
  echo $a
  c=`expr $a + $b `
  a=$b
  b=$c
done