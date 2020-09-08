require(xlsx)
df = read.xlsx("tester iOS beta.xlsx", sheetName = 1, colNames=TRUE)


boxplot(df, use.cols=T)

#hello Lena