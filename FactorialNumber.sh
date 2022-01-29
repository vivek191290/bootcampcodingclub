
read -p "Enter the number: " number


factorial=1


for (( index=$number; index>=1; index-- ))
do
	factorial=$(( factorial * index ))
done

echo Factorial of $number is $factorial