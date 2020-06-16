# A. Jenis Data ----

# 1. membuat variabel ----

num <- 3
int <- 3L
chr <- "saya suka R"
log <- TRUE

# 2. cek jenis data -----

## clas()
class(num)
class(int)
class(chr)
class(log)

## 3. is.<jenis_data>() -----
is.numeric(num)
is.integer(int)
is.character(chr)
is.logical(log)

# 4. konversi data -----
as.numeric(log)
as.integer(num)
as.character(int)
as.integer(chr)

# 5. factor ----
f <- c("baik", "netral", "buruk", "baik", "buruk")

### default
f1 <- factor(f)
levels(f1)

### mengatur level factor
f2 <- factor(f, levels = c("buruk", "netral", "baik"))
levels(f2)

# B. Struktur Data ----

# 1. vector -----

## 1.1 membuat vector ----
num_vec <- c(3, 4, 6, 7, 3.1)
int_vec <- c(3L, 4L, 6L)
chr <- c(3, 3L, TRUE, "saya")

## 1.2 cek jenis data vector ----
class(chr)

## 1.3 cek dimensi vector ----
length(num_vec)

## 1.4 melakukan subset vector ----
num[3] # mengambil elemen ke 3
num[c(1,3)] # mengambil elemen ke 1 dan 3
num[c(1:4)] # mengambil elemen ke 1 sampai 4
num[-c(1:3)] # mengambil seluruh elemen kecuali elemen 1 sampai 3
num[num>=4] # mengambil elemen dengan nilai >= 4

## 1.5 menambah/merubah elemen vector -----
int_vec[4] <- 10L
int_vec[4] <- 2L

## 1.6 operasi pada vector ----
num_vec * 2
num_vec * int_vec
log(num_vec)

# 2. Matrix ----

## 2.1 membuat matrix ----

### fungsi matrix()
mat <- matrix(data = 1:9, nrow = 3)

### menggabungkan vector
a <- c(1, 2, 3)
b <- c(5, 6, 7)

cbind(a, b) # gabungkan berdasarkan kolom
rbind(a, b) # gabungkan berdasarkan baris

## 2.2 cek kelas sebuah objek ----
class(mat)

## 2.3 cek dimensi matrix ----
dim(mat)

nrow(mat) # jumlah kolom
ncol(mat) # jumlah baris

## 2.4 melakukan subset matrix ----
mat[,3] # ambil elemen kolom ke 3
mat[1,2] # ambil elemen baris ke 1 dan kolom ke 2
mat[,-3] # kecualikan kolom ke 3
mat[-c(1,2), 3] # ambil elemen kolom ke 3 dan baris ke 3

## 2.5 menambahkan atau merubah elemen matrix -----
mat <- cbind(mat, c(1,2,3)) # menambahkan kolom ke 4
mat[,3] <- c(9,8,7) # merubah nilai kolom ke 3

## 2.6 operasi matrix ----
mat1 <- matrix(1:10, nrow = 2)
mat2 <- matrix(10:19, nrow = 2)

### penjumlahan antar elemen matrix
mat1 + mat2

### perkalian antar elemen matrix
mat1 * mat2

### tranpose matrix
mat1 <- t(mat1)

### perkalian matrix (dot product)
mat2 %*% mat1

# 3. Dataframe ----

## 3.1 membuat dataframe ----

teman <- data.frame(
  nama = c("Andi", "Ani", "Rosa", "Riski"),
  usia = c(18, 17, 17, 19),
  tinggi = c(170, 164, 165, 160),
  # pastikan karakter tidak dikonversi menjadi factor
  stringsAsFactors = FALSE
)

## 3.2 cek kelas sebuah objek ----
class(teman)

## 3.3 cek dimensi -----
dim(teman)

nrow(teman) # jumlah baris
ncol(teman) # jumlah kolom

## 3.4 melakukan subset pada dataframe ----
teman[,1] # ambil kolom 1
teman[c(1,2), 3] # ambil kolom ke 3 dan baris ke 1 dan 2
teman["tinggi"] # ambil kolom dengan nama tinggi
teman$nama # ambil kolom nama
teman[1] # ambil kolom 1

## 3.5 menambah atau merubah nilai elemen dataframe ----

### menambahkan kolom status pekerjaan pada dataframe
teman["status"] <- c("bekerja", "mahasiswa", "mahasiswa", "bekerja")

### koreksi nilai pada baris ke 2 kolom 2
teman[2,2] <- 19

## 3.6 operasi pada dataframe ----

### konversi satuan tinggi ke m
teman["tinggi"] <- teman["tinggi"]/100

### hitung rasio usia dan tinggi badan
teman["rasio"] <- teman$usia / teman$tinggi

# 4. List

vec_num <- c(1,2,4.5, 6)
df <- teman
mat <- matrix(1:6, nrow = 3)

## 4.1 membuat list -----
lst <- list(
  vector = vec_num,
  dataframe = df,
  matrix = mat
)

## 4.2 cek kelas sebuah objek ----
class(lst)


## 4.3 melakukan subset pada list ----
### ambil elemen ke 2 list
lst[2] # menghasilkan list
lst[[2]] # menghasilkan dataframe/ objek asalnya
lst$dataframe # menghasilkan dataframe

### ambil nilai baris ke 1 dan kolom 2 pada elemen ke 2 list
lst[[2]][1,2]


## 4.4 menambahkan atau merubah elemen list ----
### menambahkan elemen dengan nama atom
lst["atom"] <- 4

### menghapus elemen dengan nama atom
lst["atom"] <- NULL

### mengambil elemen ke 1 dan 3
lst[c(1,3)]

### menambahkan kolom pada matrix
add <- c(10,11,12)
lst[[3]] <- cbind(lst[[3]], add)
