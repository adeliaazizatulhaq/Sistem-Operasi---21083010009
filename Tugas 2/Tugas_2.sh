#string
judul='Mari kita mengoperasikan bilangan!'
echo "$judul"
#array
operasi=('tambah' 'kali' 'kurang' 'bagi')
let pilih=$RANDOM%5
#input
echo -n "masukkan angka yang anda suka: "
read a
echo "a=$a"
#output
echo "masukkan lagi angka yang anda suka: "
read b
echo "b=$b"
#operasi
c=$[$a+$b*4]
d=$[$a*2/$b]
echo "c = a+b*4, c = $c"
echo "d = a^2/b, d = $d"
#random array
operasiterpilih=${operasi[$pilih]}
echo "operasi yang dipilih: $operasiterpilih"
case $operasiterpilih in
  "tambah")
	echo "$c + $d = $[$c+$d]"
	;;
  "kali")
	echo "$c * $d = $[$c*$d]"
	;;
  "kurang")
	echo "$c - $d = $[$c-$d]"
	;;
  "bagi")
	echo "$c / $d = $[$c/$d]"
	;;
  *)
	echo "hayolo salah"
	;;
esac
