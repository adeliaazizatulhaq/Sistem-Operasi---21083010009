from os import getpid, system
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

# Inisialisasi fungsi ganjil-genap
def cetak(i):
    if i%2 == 0:
       print(i, "Genap - ID proses", getpid())
    else:
       print(i, "Ganjil - ID proses", getpid())
    sleep(1)
# Batas perulangan
banyak =int(input("Input :"))

# Sekuensial
print("Sekuensial")
# Untuk mendapatkan waktu sebelum eksekusi
sekuensial_awal = time()
# Proses berlangsung
for i in range(1, banyak+1):
    cetak(i)
# Untuk mendapatkan waktu setelah eksekusi
sekuensial_akhir = time()


# Process
print("multiprocessing.Process")
# Untuk menampung proses-proses
kumpulan_proses = []
# Untuk mendapatkan waktu sebelum eksekusi
process_awal = time()
# Proses berlangsung
for i in range(1, banyak+1):
    p = Process(target=cetak, args=(i,))
    kumpulan_proses.append(p)
    p.start()
# Untuk menggabungkan proses-proses agar tidak loncat ke proses sebelumnya
for i in kumpulan_proses:
    p.join()
# Untuk mendapatkan waktu setelah eksekusi
process_akhir = time()


# Pool
print("multiprocessing.Pool")
# Untuk mendapatkan waktu sebelum eksekusi
pool_awal = time()
# Proses berlangsung
pool = Pool()
pool.map(cetak, range(1, banyak+1))
pool.close()
# Untuk mendapatkan waktu setelah eksekusi
pool_akhir = time()

# Banding Waktu EKsekusi
print("Sekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process :", process_akhir - process_awal, "detik")
print("Kelas Pool :", pool_akhir - pool_awal, "detik")
