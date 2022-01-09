clear
echo "Enter range"
read n
i=1
while((i<=n))
do
c=$i
d=$i
b=0
while((c>0))
do
a=$((c%10))
b=$((b + a*a*a))
c=$((c/10))
done
if((b==d)); then
echo "$i"
fi

i=$((i+1))
done