palindrome()
{
	str=$1
	flg=0
	len=`echo $str|wc -c`
	len=`expr $len - 1`
	l=$len
	for((i=1;i<=len/2;i++))
        do
                a=`echo $str|cut -c $i`
                b=`echo $str|cut -c $l`
                if [ $a != $b ]
                then            
                    flg=1
                    break
                fi
                l=`expr $l - 1`
	  done
				if [ $flg -ne 1 ]
     		 	then
               	 echo $str>>13palin.txt 
				fi
        
}
rm 13palin.txt
for word in $(<13a.txt)
do
	echo $word>13t.txt
	if grep -E '\.$|\;$' 13t.txt
		then
			count=`wc -c <13t.txt`
			count=$(($count - 2))
	word=`cut -c 1-$count 13t.txt` 
	fi
	palindrome $word
done
clear
cat 13palin.txt