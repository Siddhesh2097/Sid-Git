function game
{
number=$(ls -l | grep ^- | wc -l)
let numless=$number-5
let nummore=$number+5
echo "Hi"
echo -e "\nWelcome to bunty khel mahotsav (BKM)"
echo -e "\nWhat is your good name"
read name

echo -e "\n$name how are you"
echo -e "\nLet's play a game $name"
echo -e "\nIt'll be a fun"

echo -e "\nAre you ready to play : y/n"
read response



while [ $response != "y" ]
do
  if [ $response == "n" ]
  then
      echo -e "\nAre you ready now : y/n"
  read response
  else
      echo -e "\nPlease enter "y" or "n""
      read response
  fi
done

if [ $response == "y" ]
then
    echo -e "\nPlease guess the number of files in your current directory :"
    read guess

    while [ $guess != $number ]
    do
      if [[ $guess != [0-9]* ]]
      then
          echo -e "\nBro, I won't leave you until you enter a positive integer"
          read guess
      elif [[ $guess -ge $numless && $guess -lt $number ]] || [[ $guess -le $nummore && $guess -gt $number ]] 
      then
          echo -e "\nBunty you are too close to your guess"
          read guess
      elif [ $guess -lt $numless ]
      then
          echo -e "\nBunty guess is too low ,Guess back "
          read guess
      elif [ $guess -gt $nummore ]
      then
          echo -e "\nBunty guess is too high,Guess back"
          read guess
      fi
    done
    echo -e "\nYour guess is CORRECT "
    echo -e "\nCONGRATULATIONS $name on winning Bunty Khel Mohotsav(BKM) : )"
    echo -e "\nHurrayyyyyyyyyyyyyyyyyyyy"
fi
}

game


