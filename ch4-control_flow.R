# A. Conditional Statement ----

## 1. program untuk mengecek bilangan ganjil atau genap ----

## Bilangan genap merupakan bilangan yang habis dibagi 2,
## sedangkan bilangan ganjil merupakan sebaliknya

bilangan <- 4

if(bilangan %% 2 == 0){
  print("bilangan genap")
}else{
  print("bilangan ganjil")
}

## 2. program untuk mengecek tahun kabisat dan bukan ----

## Tahun kabisat merupakan tahun dimana jumlah hari dalam 
## setahunnya 366 hari atau pada tahun tersebut terdapat 29 hari di bulan Februari. Tahun kabisat hanya terjadi setiap 4 tahun sekali. Tahun kabisat memiliki ciri-ciri seperti berikut:
  
## - angka tahun dapat dibagi dengan 4
## - angka tahun tidak dapat dibagi dengan 100
## - angka tahun dapat dibagi dengan 400
## - mulai diperkenalkan sejak 1582 atau sejak kalender 
##   Gregorian diperkenalkan

tahun <- 1580

if(tahun > 1580){
  if(tahun %% 4 == 0){
    print("bukan tahun kabisat")
  }else if(tahun %% 100){
    print("tahun kabisat")
  }else if(tahun %% 400){
    print("tahun kabisat")
  }
}else{
  print("bukan dalam periode kalender Gregorian")
}


# B. Loops ----

## 1. For loop ----

### 1.1 program untuk mencetak deret bilangan kelipatan 2 -----

n <- 10

for(i in 1:n){
  print(i * 2)
}

### 1.2 program untuk menghitung jumlah bilangan genap dalam vector -----

vec <- c(1, 2, 5, 7, 8, 12, 10)

count <- 0

for(i in vec){
  if(i %% 2 == 0){
    count <- count + 1
  }
}

count


### 1.3 program untuk menghitung nilai vactorial ----

### nilai faktorial merupakan hasil perkalian dari 1 sampai
### bilangan yang ditanyakan. COntoh: 3! = 1x2x3 = 6.

num <- 8
faktorial = 1

# cek apakah angka yang akan dihitung merupakan positif
if(num < 0) {
  print("Stop, faktorial harus bilangan positif")
} else if(num == 0) {
  print("nilai faktorial dari 0 adalah 1")
} else {
  for(i in 1:num) {
    faktorial = faktorial * i
  }
  print(paste("nilai faktorial dari", num ,"adalah",faktorial))
}


## 2. While loop ----

### 2.1 program yang mencetak bilangan positif sebelum bilangan maksimumnya ----

start <- 1
end <- 10

while(start < end){
  print(start)
  start <- start + 1
}


### 2.2 program yang mencetak deret fibonacci ----

### deret fibonaci merupakan deret dimana suku ke 1 dan ke 2
### secara berurutan adalah 0 dan 1, sedangkan suku berikutnya
### merupakan hasil penjumlahan 2 suku di depannya.

n_suku <- 10
# suku pertama dan kedua
n1 = 0
n2 = 1
count = 2
# cek apakah n_suku merupakan bilangan positif
if(n_suku <= 0) {
  print("Stop, n_suku harus bilangan integer positif")
} else {
  if(n_suku == 1) {
    print("Deret Fibonacci:")
    print(n1)
  } else {
    print("Deret Fibonacci:")
    print(n1)
    print(n2)
    while(count < n_suku) {
      nth = n1 + n2
      print(nth)
      # update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}

## 3. break dan next -----

### break
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

### next
x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}

# C. Vectorised Operation -----

## 1. vectorised vs unvectorised sum() ----

### unvectorised
start_time <- Sys.time()

x <- 1:100000000
sum <- 0

for(i in x){
  sum <- sum + i
}

sum

end_time <- Sys.time()

end_time - start_time

### vectorised
start_time <- Sys.time()

x <- 1:100000000

sum(x)

end_time <- Sys.time()

end_time - start_time


## 2. vectorised if ----

num <- 4

### unvectorised
if(num %% 2 == 0){
  print("bilangan genap")
}else{
  print("bilangan ganjil")
}

### vectorised
ifelse(num %% 2 == 0, 
       print("bilangan genap"),
       print("bilangan ganjil"))


