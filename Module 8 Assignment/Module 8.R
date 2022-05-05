StudentAssignment6 <- read.table("S:\\Users\\Benjamin\\Downloads\\Assignment 6 Dataset.txt", header = TRUE)
StudentAssignment6

df <- data.frame(StudentAssignment6)

df <- df %>% separate(Name.Age.Sex.Grade, c("Name", "Age", "Sex", "Grade"))



StudentAverage <- ddply(df, "Sex", summarize, Grade.Average=mean(Grade))
StudentAverage

sex <- StudentAssignment6$Sex
mean(sex)

paste("Average of gender value is: ",mean(students_avg$Gender.ID))

write.table(students_avg, "Student_Averages.txt", sep=",")

students_i <- subset(students_avg, grepl("i", students_avg$Name, ignore.case= T))

write.table(students_i, "Student_i_Averages.txt")

chosen_file <- file.choose()
write.csv(read.table(chosen_file, header=T, sep=" "), "Student_i_Averages.csv") 