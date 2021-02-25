df <- read.csv("mentor_mentee.csv")
df
names(df)
class(df)
df$S.No
df$Name.of.the.Student
df$Name.of.the.Student[9]
df$Name.of.the.Student[9] = "Lucky Singh"
df
df$Name.of.the.Student[26] = "Yadav Kamal"
df
new_mentor <- rep(c("John Contosa"), 26)
new_mentor
df$Mentor[25] = "H K V"
df
df$Mentor <- new_mentor
df
df$Mentor[15:20]
df$Mentor[15:20] <- rep(c("H K V"), 6))
df 
df$Programme <- "BCA"
df
df
df$Email.Id
df
write.csv(df, "updated_mentor_mentee.csv")
q()
