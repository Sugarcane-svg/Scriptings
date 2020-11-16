#! /bin/bash

#I already downloaded the file in the computer and unzipped it, so i will do the# following steps


# 1. check the first 10 lines of original csv file
head -10 movies.csv

# 2. check the number of lines of original csv file
wc -l movies.csv

# 3. extract genre from movies.csv and save data into genre.txt
cut -d: -f3 movies.csv >>genre.txt

# 4. sort data in alpha order[A-Z]
sort genre.txt

# 5. group those data with single genre keywords(ignore cases), then count the
# number of each genre and print it into genreReport.txt
printf "Adventure: ">>genreReport.txt && (grep -io adventures genre.txt | wc -l)>>genreReport.txt
printf "Children: ">>genreReport.txt && (grep -io children genre.txt | wc -l)>>genreReport.txt
printf "Animation: ">>genreReport.txt && (grep -io animation genre.txt | wc -l)>>genreReport.txt
printf "Comedy: ">>genreReport.txt && (grep -io comedy genre.txt | wc -l)>>genreReport.txt
printf "Fantasy: ">>genreReport.txt && (grep -io Fantasy genre.txt | wc -l)>>genreReport.txt
printf "Romance: ">>genreReport.txt && (grep -io Romance genre.txt | wc -l)>>genreReport.txt
printf "Drama: ">>genreReport.txt && (grep -io Drama genre.txt | wc -l)>>genreReport.txt
printf "Crime: ">>genreReport.txt && (grep -io Crime genre.txt | wc -l)>>genreReport.txt
printf "Action: ">>genreReport.txt && (grep -io Action genre.txt | wc -l)>>genreReport.txt
printf "Thrill: ">>genreReport.txt && (grep -io Thrill genre.txt | wc -l)>>genreReport.txt
printf "Horror: ">>genreReport.txt && (grep -io Horror genre.txt | wc -l)>>genreReport.txt

# 6.use awk command to adds up those data and append result into file
printf "Total: " >> genreReport.txt && awk '{s+=$2} END {printf "%.0f", s}' genreReport.txt

# 7. finally get the original total record numbers
printf "Total records: " >> genreReport.txt | wc -l genre.txt >> genreReport.txt

# 8. add the summary of this report
printf "\n">>genreReport.txt
printf "This is the report of genres with 58099 records read.
I extract genre records from movies.csv, sort it and group them and count them for better visualization and analyzation.
Even though the number of total is over the number of total records, it is not a big deal. we can see that comedy and dramas are the top two genres liked the most by audience. So, if I have enough money to invest on a movie, I will put these two options on the top of my head.">>genreReport.txt

