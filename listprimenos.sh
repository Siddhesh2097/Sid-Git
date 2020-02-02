function prime
{
read -p "Enter a number" num

i=3
count_num=0

while [[ $count_num -lt $num ]]
do
  count=0
  for x in $(seq 2 $i)
  do
    if [[ `expr $i % $x` -eq 0 ]]
    then
        let count=$count+1
    fi
  done
if [[ $count -eq 1 ]]
then
    echo -n "$i "

let count_num=$count_num+1
fi

let ++i

done
echo
}

prime
