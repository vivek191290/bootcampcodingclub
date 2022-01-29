
indexOne=0


function primeFacotrs()
{
	array=$1
	for (( index=2; $index<=$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			array[indexOne]=$index
			((indexOne++))
			number=$(($number/$index))
		fi

		if [ $(($number%$index)) -eq 0 ]
		then
			((index--))
		fi
	done
	echo "${array[@]}"
}


read -p "Enter a number: " number


echo "Prime factors of Number are" "$( primeFacotrs $((number)))"