#Question 2 

install.packages("rvest")
library("rvest")
install.packages("xml2")
library("xml2")

match_link="https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry"
match_file= read_html(match_link)
match_table=html_nodes(match_file,"table")

#Invoke the 2nd table

matches_final<-html_table(matches_table[2], fill= TRUE)
View(matches_final)
matches_data=as.data.frame(matches_table_final)
View(matches_data)

#Calculating the total wins

matches_data$total_wins=matches_data$Test+matches_data$ODI+matches_data$T20I

#Calculating the wins by India 

wins<-matches_data[3,5]
View(wins)