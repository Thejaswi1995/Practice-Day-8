#!/bin/sh -x

i=0

one=0
two=0
three=0
four=0
five=0
six=0

while [[ $one -le 9 && $two -le 9 && $three -le 9 && $four -le 9 && $five -le 9 && $six -le 9 ]]
do

	x=$((RANDOM%6+1))
	((i++))
	roll[$i]=$x

		case $x in
			1 )
				one=$(($one+1))
			;;
			2 )
				two=$(($two+1))
			;;
			3 )
				three=$(($three+1))
			;;
			4 )
				four=$(($four+1))
			;;
			5 )
				five=$(($five+1))
			;;
			6 )
				six=$(($six+1))
			;;
			*)
				echo "Error"
			;;
			esac
done

total_roll[1]=$one
total_roll[2]=$two
total_roll[3]=$three
total_roll[4]=$four
total_roll[5]=$five
total_roll[6]=$six

echo ${total_roll[@]}

min=${total_roll[1]}
max=${total_roll[1]}

for((i=1;i<6;i++))
do
	if [ ${total_roll[$i]} -lt $min ];
	then
		min=${total_roll[$i]}

	elif [ ${total_roll[$i]} -gt $max ];
	then
		max=${total_roll[$i]}
	fi
done
echo " the min value " $min
echo " the max value" $max

