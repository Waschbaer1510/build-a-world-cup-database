#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


# Define the function to get or insert a team
get_or_insert_team() {
  local TEAM_NAME=$1
  local TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$TEAM_NAME'")

  if [[ -z $TEAM_ID ]]; then
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES ('$TEAM_NAME');")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]; then
      echo "Inserted into teams, $TEAM_NAME" >&2 # This command sends the output of the echo statement to stderr instead of stdout. The >&2 part is responsible for this redirection.
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$TEAM_NAME'")
    fi
  fi

  echo $TEAM_ID
}

# Clean up existing tables before reading all the data from csv
echo $($PSQL "TRUNCATE teams, games")

# Do not forget to set the delimeter to "," when reading the CSV! -> while IFS=","

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #echo $YEAR
  # Skip csv headers

  if [[ $YEAR != year ]]
  then

    WINNER_ID=$(get_or_insert_team "$WINNER")

    OPPONENT_ID=$(get_or_insert_team "$OPPONENT")

    # New games entry
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS, $OPPONENT_GOALS);")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games, $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS"
    fi
  fi
done