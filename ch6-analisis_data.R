# A. Dataset ----

## 1. Cek Dataset yang Tersedia ----
data()

## 2. Akses Dataset ----
df <- iris

# B. Ringkasan Data ----

## 1. Cek Data ----
head(df) # cek 6 observasi teratas
head(df, 10) # cek 10 observasi teratas
tail(df) # cek 6 observasi terbawah
tail(df, 10) # cek 10 observasi terbawah
str(df) # cek struktur data

## 2. Statistika Deskriptif ----
summary(df) # ringkasan data

table(df$Species) # tabel kontingensi

mean(df$Sepal.Length, na.rm = TRUE) # nilai rata-rata
median(df$Sepal.Length, na.rm = TRUE) # nilai median
sd(df$Sepal.Length, na.rm = TRUE) # simpangan baku
var(df$Sepal.Length, na.rm = TRUE) # varian
IQR(df$Sepal.Length, na.rm = TRUE) # interquartile range
min(df$Sepal.Length, na.rm = TRUE) # nilai minimum
max(df$Sepal.Length, na.rm = TRUE) # nilai maksimum
range(df$Sepal.Length, na.rm = TRUE) # rentang nilai
quantile(df$Sepal.Length, probs = seq(0, 1, 0.25), 
         na.rm = TRUE) # kuantil

cor(df[1:4]) # matriks korelasi

# C. Visualisasi Data ----

## 1. Scatterplot Matrix ----
plot(df[1:4])

## 2. Scatterplot ----
plot(x = df$Sepal.Length, y = df$Sepal.Width)

## 3. Boxplot ----
boxplot(df$Sepal.Length)
boxplot(Sepal.Length~Species, data = df)

## 4. Histogram ----
hist(df$Sepal.Length)

## 5. Barplot ----
x <- table(df$Species)
barplot(x)

## 6. pie chart
pie(x)
