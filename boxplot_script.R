require(xlsx)
df = read.xlsx("tester iOS beta.xlsx", sheetName = 1, colNames=TRUE)


boxplot(df[,2:10], use.cols=T)

#hello Lena

#trying another commit