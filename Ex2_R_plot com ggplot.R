# salvo em https://labs.cognitiveclass.ai/tools/rstudio-ide/?md_instructions_url=https%3A%2F%2Fcf-courses-data.s3.us.cloud-object-storage.appdomain.cloud%2FIBMDeveloperSkillsNetwork-DS0105EN-SkillsNetwork%2Flabs%2FModule2%2FDS0105EN-2-Lab-RStudio%2520%25E2%2580%2593%2520The%2520Basics.md&lis_outcome_service_url=https%3A%2F%2Fapi.coursera.org%2Fapi%2FonDemandLtiOutcomes.v1&lis_outcome_service_url=https%3A%2F%2Fapi.coursera.org%2Fapi%2FonDemandLtiOutcomes.v1&token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY3Rpb24iOiJsdGkvcmVzdWx0cyIsInVzZXJuYW1lIjoiYWNyaXp6aSIsIm9wdGlvbnMiOnsibGlzX291dGNvbWVfc2VydmljZV91cmwiOiJodHRwczovL2FwaS5jb3Vyc2VyYS5vcmcvYXBpL29uRGVtYW5kTHRpT3V0Y29tZXMudjEiLCJsaXNfcmVzdWx0X3NvdXJjZWRpZCI6Im9uZGVtYW5kfjE3MjQ4MDcwMzcxYzJlNGQwNDViOWI3Yzc4MWNkMWFjIX5vQ0JVNV9WWUVlZUJRQTdTRzBuSUxBIX4yZ0w2aSF-UHJnQWlKcFFFZXk2b1JKU1lPb0N1USIsIm9hdXRoX2NvbnN1bWVyX2tleSI6InRvb2xzX2Zvcl9oYW5kc19vbl9kYXRhX3NjaWVuY2UiLCJzY29yZSI6IjEuMCJ9LCJpYXQiOjE2NDYyNDMwNDIsImV4cCI6MTY0NjI2NDY0Mn0.oX4Vqp5YcrkfuXsaVbfwCkoWLwHILj7movx6VDJKGNk&lti=true

library(datasets)
# Load Data
data(mtcars)
# View first 5 rows
head(mtcars, 5)


#load ggplot package
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

# Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

# change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")


#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#Add color to the boxplots to help differentiate:
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

#Finally, let us create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)