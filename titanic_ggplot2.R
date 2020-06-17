#install.packages("ggplot2")
library(ggplot2)

#Load Titanic titanicing data for analysis. Open in spreadsheet view.
titanic <- read.csv("D:/Practice/DataVisualization/titanic.csv", stringsAsFactors = FALSE)
# View(titanic)

titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)

# Map data to bar chart
# Note you can select chart code and can only those chart code.
ggplot(titanic, aes(x = Survived)) + geom_bar()

#If you really want percentage
# prop.table(table(titanic$Survived))

#Add some customization for labels and theme.
ggplot(titanic, aes(x = Survived)) +
    theme_bw() +
    geom_bar() +
    labs(y = "Passenger Count", title = "Titanic Survival Rates")


ggplot(titanic, aes(x = Sex, fill = Survived)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Passenger Count", title = "Titanic Survival Rates")


ggplot(titanic, aes(x = Pclass, fill = Survived)) +
  theme_bw() +
  geom_bar() +
  labs(y = "Passenger Count", title = "Titanic Survival Rates")


ggplot(titanic, aes(x = Sex, fill = Survived)) +
  theme_bw() +
  facet_wrap(~ Pclass) +
  geom_bar() +
  labs(y = "Passenger Count", title = "Titanic Survival Rates by Pclass and Sex")

ggplot(titanic, aes(x = Age)) +
  theme_bw() +
  geom_histogram(binwidth = 5)
  labs(y = "Passenger Count", x = "Age (binwidth = 5)", title = "Titanic Age Distribtion")
  
ggplot(titanic, aes(x = Survived, y=Age)) +
  theme_bw() +
  geom_boxplot()
labs(y = "Age", x = "Survived", title = "Titanic Survival Rates by Age")






