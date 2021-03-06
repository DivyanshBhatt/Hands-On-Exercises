library("xml2")
library("rvest")
link = "http://stats.espncricinfo.com/ci/content/records/284248.html"
file=read_html(link)
scores_table=html_nodes(file,"table_scores")
final_scores<-html_table_scores(table_scores[1],fill=TRUE)
View(final_scores)
class(final_scores)
scores.df <- as.data.frame(final_scores)

scores.df[with(scores.df, order(Runs, Player)), ]

View(scores.df)

Top_five<-c(scores.df$Player[1], scores.df$Player[2], scores.df$Player[3], scores.df$Player[4], scores.df$Player[5])
Top_five

## Top Five Scorers End

PAK=0
AUS=0
IND=0
SL=0
ENG=0
WI=0
SA=0

for(i in 1:length(scores.df$Player))
{
  if(grepl("PAK",scores.df$Player[i]))
    PAK=PAK+1
}

PAK

for(i in 1:length(scores.df$Player))
{
  if(grepl("AUS",scores.df$Player[i]))
    AUS=AUS+1
}

AUS
for(i in 1:length(scores.df$Player))
{
  if(grepl("INDIA",scores.df$Player[i]))
    IND=IND+1
}

IND
for(i in 1:length(scores.df$Player))
{
  if(grepl("SL",scores.df$Player[i]))
    SL=SL+1
}

SL
for(i in 1:length(scores.df$Player))
{
  if(grepl("ENG",scores.df$Player[i]))
    ENG=ENG+1
}

ENG
for(i in 1:length(scores.df$Player))
{
  if(grepl("WI",scores.df$Player[i]))
    WI=WI+1
}

WI
for(i in 1:length(scores.df$Player))
{
  if(grepl("SA",scores.df$Player[i]))
    SA=SA+1
}

SA

totak_appearances = PAK + AUS + IND + WI + ENG + SA + SL

PAK_ratio = 100*PAK/totak_appearances
AUS_ratio = 100*AUS/totak_appearances
IND_ratio = 100*IND/totak_appearances
SL_ratio = 100*SL/totak_appearances
WI_ratio = 100*WI/totak_appearances
ENG_ratio = 100*ENG/totak_appearances
SA_ratio = 100*SA/totak_appearances