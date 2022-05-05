Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first_assessment <- c(1,1,1,1,0,0,0,0,NA,1)
second_assessment <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)

PatientData <- data.frame(Freq, bloodp, first_assessment, second_assessment, finaldecision)
PatientData

FirstAssessBoxplot <- boxplot(bloodp ~ first_assessment, PatientData,
                              main = "First Assessment by Doctor",
                              xlab= "First Assessment",
                              ylab = "Blood Pressure"
                              
)
SecondAssessBoxplot <- boxplot(bloodp ~ second_assessment, PatientData,
                               main= "Second Assessment by External Doctors",
                               xlab = "Second Assessment",
                               ylab = "Blood Pressure"
                               
)
ThirdAssessBoxplot <- boxplot(bloodp ~ finaldecision, PatientData,
                              main = "Final Assessment by Head Emergency Unit",
                              xlab = "Final Assessment",
                              ylab = "Blood Pressure"
                              
)

PatientHistogram <- hist(PatientData$bloodp, 
                         main = "Patient Blood Pressure",
                         xlab = "Blood Pressure",
                         ylab = "Hospital Frequency of Visits"
                         
                         )