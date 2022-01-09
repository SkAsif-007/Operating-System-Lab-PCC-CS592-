clear
read -p "Enter the size of the square: " n
for (( i=1;i<=n;i++))
do
   for(( j=1;j<=n;j++))
   do
      if [ $i -eq 1 ] || [ $i -eq $n ] || [ $j -eq 1 ] || [ $j -eq $n ]
      then
        q=`expr $i + 40`
        p=`expr 12 - $j`  
        tput cup $p $q 
        echo "*"
      fi
   done
done
tput cup $(tput lines) 0