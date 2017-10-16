### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win
SeaScores <- c(17, 12, 33, 46, 16)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
AgainstSeaScores <- c(9, 9, 27, 18, 10)

# Combine your two vectors into a dataframe
scores <- data.frame(SeaScores, AgainstSeaScores)

# Create a new column "diff" that is the difference in points
scores$diff <- abs(scores$SeaScores - scores$AgainstSeaScores)

# Create a new column "won" which is TRUE if the Seahawks won
scores$won <- scores$SeaScores > scores$AgainstSeaScores

# Create a vector of the opponents
opponents <- c("Green Bay", "San Francisco", "Tennessee", "Indianapolis", "LA Rams")

# Add the vector of opponents into the data frame
scores$opponents <- opponents

