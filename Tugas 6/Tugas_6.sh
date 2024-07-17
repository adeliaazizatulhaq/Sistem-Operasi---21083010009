#!/bin/bash
#Memasukkan jumlah semester
echo "Jumlah semester yang telah ditempuh : "
read semester

#Deklarasi array [Explicit Declaration]
declare -a IPSMahasiswa

#Memanfaatkan perintah while-do
i=0
jumlah=o
while [ $i -lt $semester ];
do
	let urutansemester=$i+1
	echo "Semester " $urutansemester " : ";
	read nilaisemester;
	IPSMahasiswa[$i]=$nilaisemester;
	let jumlah=$jumlah+${IPSMahasiswa[i]};
	let i=$i+1;
done

#Menghitung IPK
let IPK=$jumlah/$semester

#Menampilkan IPS dan IPK mahasiswa
echo "IPK mahasiswa = " $jumlah "/" $semester
echo "IPK mahasiswa = " $IPK

