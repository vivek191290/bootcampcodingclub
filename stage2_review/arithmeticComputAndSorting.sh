echo "Arithmetic Compution And Sorting"

declare -A arithmaticOperation

read -p "Enter first input :" a
read -p "Enter second input:" b
read -p "Enter third input :" c


result1=`echo "scale=2;$a + $b * $c" | bc`
echo "Result:" $result1

result2=`echo "scale=2;$a * $b + $c" | bc`
echo "Result:" $result2

result3=`echo "scale=2;$c + $a / $b " | bc`
echo "Result:" $result3

result4=`echo "scale=2;$a % $b + $c" | bc`
echo "Result:" $result4


arithmaticOperation[result1]=$result1
arithmaticOperation[result2]=$result2
arithmaticOperation[result3]=$result3
arithmaticOperation[result4]=$result4

 
for((index=0; index<=${#arithmaticOperation[@]}; index++))
do
  array[index]=${arithmaticOperation[result$((index+1))]}
done
 
echo "${array[@]}"
 
function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if (( $(echo "${array[indexOne+1]} > ${array[indexOne]}" | bc -l ) ))
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
echo "To data descending order:"${array[@]}
}


descendingOrderSort ${array[@]}

 
function ascendingOrderSort()
{
   for(( index=0; index<${#array[@]}; index ++ ))
   do
      for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
      do
         if (( $(echo "${array[indexOne+1]} < ${array[indexOne]}" | bc -l ) ))
         then
            temp=${array[indexOne]}
            array[indexOne]=${array[indexOne+1]}
            array[indexOne+1]=$temp
         fi
      done
   done
   echo "To data ascending order:"${array[@]}
}

 
ascendingOrderSort ${array[@]}