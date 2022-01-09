clear
echo "Enter Number"
read n
temp=$n

rev=0
while [ $n -gt 0 ]
do
rem=`expr $n % 10`
rev=`expr $rev \* 10 + $rem`
n=`expr $n / 10`
done

if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi  