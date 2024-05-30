
# save data
library(psych)
lab_temp = sat.act[,1:4]

lab2ACTScores = lab_temp[rowSums(is.na(lab_temp))<1,1:4]

# fix data types
lab2ACTScores$gender = as.factor(lab2ACTScores$gender)
lab2ACTScores$education = as.factor(lab2ACTScores$education)


# recode data
# Fix the factor level for categorical predictors
library(plyr)
lab2ACTScores$gender = mapvalues(lab2ACTScores$gender, 
                                 from = c(1, 2), to = c("Male", "Female"))
lab2ACTScores$education = mapvalues(lab2ACTScores$education, from = 0:5, to = c(NA,"Some High School", "Finished High School",
                                                                        "Some College", "Undergraduate Degree",
                                                                        "Graduate Degree"))

# re-save the data
# save data
lab2ACTScores_original = lab2ACTScores

lab2ACTScores = lab2ACTScores[rowSums(is.na(lab2ACTScores))<1,1:4]
#View(lab2ACTScores)

# export the datasets
write.csv(lab2ACTScores,"C:\\Users\\Monica\\OneDrive\\st - PSC 103A\\Discussions-Labs\\Data\\lab2ACTScores.csv",
          row.names = F)
write.table(lab2ACTScores,"C:\\Users\\Monica\\OneDrive\\st - PSC 103A\\Discussions-Labs\\Data\\lab2ACTScores.txt",
            row.names = F)
# C:/Users/Monica/OneDrive/st - PSC 103A/Discussions-Labs/Datasets"