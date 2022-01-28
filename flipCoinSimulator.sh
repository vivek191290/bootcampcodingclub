headcount=0
tailcount=0
flip=0
while [ $flip -le 35 ]
do 
echo $flip
Result=$((RANDOM%2))
if [ ${Result} -eq 0 ]
then
echo HEAD
headcount=$((headcount+1))
echo "Head total WON number is : "$headcount
elif [ ${Result} -eq 1 ]
then
echo TAIL
tailcount=$((tailcount+1))
echo "Tail total WON number is : "$tailcount
flip=$((flip+1))
else 
echo "flip again"
fi
done
if [ $headcount -eq 21 ]
then
echo "HEAD IS WINNER $headcount"
exit
elif [ $tailcount -eq 21 ]
then 
echo "TAIL IS WINNER $tailcount"
exit
elif [ $headcount -eq $tailcount ]
then
echo "It is Tie $headcount $tailcount"
else
echo "Flip coin again"
fi