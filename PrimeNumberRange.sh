read -p "Enter Start Point of Range: " start
read -p "Enter End Point of Range: " end


for (( index=$start; index<=$end; index++ ))
do
	count=1
	for (( indexOne=2; indexOne<=$index; indexOne++ ))
	do
		if [ $(( index % indexOne )) -eq 0 ]
		then
			count=$(( count + 1 ))
		fi
	done

	if [[ $count -le 2 ]] && [[ $index -ne 1 ]]
	then
		echo -n $index " "
	fi
done