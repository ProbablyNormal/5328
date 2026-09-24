########################################################################################
####DATE CREATED: 09/24/2026

####Program Name: “CDC Places intro”

#### Client: T32 Grant Course

####INVESTIGATOR(s):  NA

####AUTHOR OF THIS PROGRAM:  Chary Akmyradov, Ph.D.

####DATE REQUEST WAS APPROVED OR RECEIVED (IF RELEVANT):

####PURPOSE:  Course Material Development

####DETAILS OF REQUEST (IF RELEVANT): 

####DELIVERABLE:  R program in a Github repo

#####DATASET(S) USED: CDC Places

################################################
# NOTES: 
################################################
  
####DATE MODIFIED:  MMMDDYYYY
  
####DATE REVISED:   MMMDDYYYY
  
####MODIFIED BY: 
  
####REASON FOR MODIFICATION: 
  
####DESCRIPTION OF MODIFICATION: 
  
########################################################################################


#CDCPLACES package information: https://brendensm.github.io/CDCPLACES/reference/get_places.html
install.packages("CDCPLACES")
library(CDCPLACES)

#data dictionary.
#source: https://brendensm.github.io/CDCPLACES/reference/get_dictionary.html
dictionary <- get_dictionary()
View(dictionary)
head(dictionary)

#example1
# County-level short-sleep-duration estimates for Michigan
tx <- get_places(geography = "county", state = "TX", measure = "SLEEP", release = "2023")

#example2
# Multiple states and measures at once
df <- get_places(
  geography = "county",
  state     = c("TX", "OK","AR","NM"),
  measure   = c("SLEEP", "ACCESS2"),
  release   = "2023"
)

#for maps, for Texas, for other state change the state parameter
tx_map <- get_places(geography = "county", state = "TX", measure = "SLEEP", geometry = TRUE)
plot(tx_map["data_value"])