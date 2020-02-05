i=2 ##starting number
count_num=0 ##counts till num (user defined)
read -p "Enter number of prime nos:" num
prime() ##function start
{
while [[ $count_num -lt $num ]]
do
  count=0
  for x in $(seq 1 $i)
  do
    if [[ `expr $i % $x` -eq 0 ]]
    then
        let count=$count+1
    fi
  done
if [[ $count -eq 2 ]]
then
    echo "$i "

    let i=$i+1
    let count_num=$count_num+1
    prime
else
     let i=$i+1
     prime
fi
done
}
prime
