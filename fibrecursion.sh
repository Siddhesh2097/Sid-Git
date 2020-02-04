fibo()
{
if [[ $1 -le 1 ]]
then
    echo $1
else
    #let a=$1-1
    #let b=$1-2
    #a1=$(fibo $a)
    #b1=$(fibo $b)
    #echo "$a1 + $b1" | bc
    echo "$(($(fibo $(($1-1 | bc)))+$(fibo $(($1-2 | bc))) | bc))" 
fi
}

read -p "enter a no : " n
for i in $(seq 0 $(($n-1 | bc)))
do
  echo "$(fibo $i) "
done


