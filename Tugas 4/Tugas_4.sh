#!/bin/bash
echo "--------------------------------"
echo "Menggunakan While Loop"
echo "--------------------------------"
echo "masukkan bilangan yang kamu suka!"
read angka;
echo "akan menampilkan bilangan ganjil dari $angka"
a=$angka
if [ $(($a%2)) == 0 ];
then
 let a2=a-1
else
 a2=$a
fi
echo "perhitungan di mulai"
while [ $a2 -ge 1 ]
do
  echo $a2
  a2=$(($a2-2))
done
