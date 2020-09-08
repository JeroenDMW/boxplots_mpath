require(xlsx)
df = read.xlsx("tester iOS beta.xlsx", sheetName = 1, colNames=TRUE)


boxplot(df[,2:10], use.cols=T) #creates boxplots for collected data, but here order is a bit messed up. We want to therefore use ggplot, but ggplot requires dataframes that have variables as rows - so we need to transpose our dataset


#to reshape our data into long format we will make use of the reshape package, but let's first select only those columns that interest us

df_na = df[,c(2,3,6,7,9)] #this selects the NA columns df[*,**] -> in * you specify rows included, leaving this empty means you include all rows. In ** you specify columns included I here use c() to indicate specific columns
df_pa = df[,c(4,5,8,10)]

df_pana = df[,c(22,23)]

#install.packages("reshape2") #install this package if you don't have it
require(reshape2)
#install.packages("ggplot2") #install this package if you don't have it
require(ggplot2)

ggplot(data = melt(df_pa), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))
ggplot(data = melt(df_na), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))
ggplot(data = melt(df_pana), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))

####################################
rm(list = ls())


df_second = read.xlsx("dataset2.xlsx", sheetName = 1, colNames=TRUE)



df_na2 = df_second[,c(4,5,7,8,10)] #this selects the NA columns df[*,**] -> in * you specify rows included, leaving this empty means you include all rows. In ** you specify columns included I here use c() to indicate specific columns
df_pa2 = df_second[,c(2,3,6,9)]
df_pana2 = df_second[,c(22,23)]

ggplot(data = melt(df_pa2), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))
ggplot(data = melt(df_na2), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))
ggplot(data = melt(df_pana2), aes(x=variable, y=value)) + geom_boxplot(aes(fill=variable))
