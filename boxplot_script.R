require(xlsx)
df = read.xlsx("tester iOS beta.xlsx", sheetName = 1, colNames=TRUE)

df %>%
  ggplot(aes(x=carrier, y=speed)) +
  geom_boxplot() +
  labs(y="Speed", x="Carrier", subtitle="Speed vs Carrier: nycflight13 data")

boxplot(df, use.cols=T)



