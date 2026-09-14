#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

VALUEONE=0

RANDOM_NUMBER=$((RANDOM % 1000 + 1))
echo $RANDOM_NUMBER

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  USERNAME=$($PSQL "SELECT username FROM users WHERE user_id = $USER_ID")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guess_count) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

START_GAME=$($PSQL "INSERT INTO games (user_id) VALUES ($USER_ID)")
GAME_ID=$($PSQL "SELECT game_id FROM games WHERE user_id = $USER_ID ORDER BY game_id LIMIT 1")
GUESS_COUNT=$($PSQL "SELECT guess_count FROM games WHERE game_id = $GAME_ID")

COUNT=1

echo "Guess the secret number between 1 and 1000:"

guessing_game() {
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    guessing_game
  fi
  if [[ $GUESS -eq $RANDOM_NUMBER ]]
  then
    echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
    SET FINAL_GUESS_COUNT=$($PSQL "UPDATE games SET guess_count = $COUNT WHERE game_id = $GAME_ID")
  fi
  if [[ $GUESS -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    COUNT=$((COUNT + 1))
    guessing_game
  fi
  if [[ $GUESS -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    COUNT=$((COUNT + 1))
    guessing_game
  fi
}

guessing_game
