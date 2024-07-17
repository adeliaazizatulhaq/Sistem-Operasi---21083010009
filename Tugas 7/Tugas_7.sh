#!/bin/bash
# Mendeklarasikan fungsi
persegi_panjang() {
	panjang
	lebar
	echo "Luas persegi :"
	let persegi=$panjang*$lebar
	echo "$persegi"
}
panjang() {
        echo "Masukkan Panjang :"
        read panjang
}
lebar() {
	echo "Masukkan Lebar :"
	read lebar
}
# Memanggil fungsi
persegi_panjang


