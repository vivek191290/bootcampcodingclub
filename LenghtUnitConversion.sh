
read -p "Enter the length: " length


echo Enter 1 to convert length from Feet to Inch
echo Enter 2 to convert length from Feet to Meter
echo Enter 3 to convert length from Inch to Feet
echo Enter 4 to convert length from Meter to Feet


read -p "Enter your choice: " choice


case $choice in
	1)
		
		result=$(echo "scale=2; $length * 12" | bc)
		echo $length Feet = $result Inch
		;;
	2)
		
		result=$(echo "$length * 0.3048" | bc)
		echo $length Feet = $result Meter
		;;
	3)
		
		result=`expr "$length * 0.083" | bc`
		echo $length Inch = $result Feet
		;;
	4)
		
		result=`expr "$length * 3.28" | bc`
		echo $length Meter = $result Feet
		;;
	*)
		echo Enter Valid Number
		;;
esac