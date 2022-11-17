#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read UN

QUN=$($PSQL "select username from users where username='$UN'")
#Username queried from database

#Check if user has played
if [[ -z $QUN ]]
then
  echo -e "\nWelcome, $UN! It looks like this is your first time here."
  INUN=$($PSQL "insert into users(username) values('$UN')")
else
  echo -e "\nWelcome back, $UN! You have played <games_played> games, and your best game took <best_game> guesses."
fi  

RNG=$(( 1 + $RANDOM % 1000 ))
#Random number generated
NUM_GUESS=0
#Number of guesses variable

echo "Guess the secret number between 1 and 1000:"

#While loop for game
while read UG
do
  NUM_GUESS=$(( $NUM_GUESS + 1 ))

  if [[ ! $UG =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $UG -eq $RNG ]]
    then
      echo -e "\nYou guessed it in $NUM_GUESS tries. The secret number was $RNG. Nice job!"
      break;
    else
      if [[ $UG -gt $RNG ]]
      then
        echo -n "It's lower than that, guess again:"
      elif [[ $UG -lt $RNG ]]
      then
        echo -n "It's higher than that, guess again:"
      fi
    fi
  fi
done

#if [[ $NUM_GUESS -lt  ]]