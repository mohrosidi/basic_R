# A. Packages ----

## 1. install packages ----
install.packages("dplyr")

## 2. memuat packages ----
library(dplyr)

## 3. akses sebuah fungsi dari packages ----
teman <- data.frame(
  nama = c("Andi", "Ani", "Rosa", "Riski"),
  usia = c(18, 17, 17, 19),
  tinggi = c(170, 164, 165, 160),
  # pastikan karakter tidak dikonversi menjadi factor
  stringsAsFactors = FALSE
)

dplyr::select(teman, nama)

## 4. akses dokumentasi suatu fungsi ----
?select
### atau
?dplyr::select

# B . User Define Function ----

## 1. Fungsi untuk mencetak deret fibonacci ----

fib <- function(n_suku){
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
  
}

## 2. Fungsi untuk menghitung jumlah bilangan genap

even <- function(vec){
  
  count <- 0
  
  for(i in vec){
    if(i %% 2 == 0){
      count <- count + 1
    }
  }
  return(count)
}

vec <- c(2, 3, 4, 8, 10)
even(vec)


