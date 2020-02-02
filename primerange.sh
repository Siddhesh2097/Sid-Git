read -p "Enter start " start
read -p "Enter end number " end


for i in $(seq $start $end)
do
  count=0 
  for j in $(seq 2 $i)
  do
    if [[ `expr $i % $j` -eq 0 ]]
    then
        let ++count
        if [[ $count -ge 2 ]]
	then
	    break
	fi
    fi
  done
  if [[ $count -eq 1 ]]
  then
      echo $i
  fi
done
