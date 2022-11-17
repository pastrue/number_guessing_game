#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read UN

QUN=$($PSQL "select username from users where username='$UN'")

if [[ -z $QUN ]]
then
  echo -e "\nWelcome, $UN! It looks like this is your first time here."
  INUN=$($PSQL "insert into users(username) values('$UN')")
else
  echo 
fi  
