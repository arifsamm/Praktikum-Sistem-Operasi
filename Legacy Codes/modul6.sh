clear
tes=y

while [ $tes == 'y' ]
do
echo "== Program Nilai Terkecil Kedua di dalam Array =="
echo "1. Demo Program Array"
echo "2. Lihat Data Array"
echo "3. Rata-rata Array"
echo "4. Exit"
echo "Pilihan :"
read pil

case $pil in
1)
echo "Masukkan banyak element array : "
read input

for((i=0;i<$input;i++))
do
    printf "Index array - $i : "
    read bibit[i]
done

terkecil_prtm=${bibit[0]}
for((i=0;i<$input;i++))
do
    if [[ $terkecil_prtm -gt ${bibit[i]} ]]
    then
        let terkecil_prtm=${bibit[i]}
        let halah=i
    fi
done

terkecil_kedua=99999
index=0
for((i=0;i<$input;i++))
do
    if [[ $i -eq $halah ]]
    then
        let i=i+1
        let i=i-1
    else
          if [[ $terkecil_kedua -gt ${bibit[i]} ]]
        then
            let terkecil_kedua=${bibit[i]}
let index=i
        fi
    fi
done

printf "\n"
echo "Nilai terkecil kedua di dalam array adalah : $terkecil_kedua"
echo "Array terkecil kedua Index ke : $index"
read
clear
;;

2)
if [[ $input -eq 0 ]]
then
    printf "Data Masih Kosong \n"
else
    echo ${bibit[@]}
fi
read
clear
;;

3)
if [[ $input -eq 0 ]]
then
    printf "\n"
    printf "0\n"
else
    banyak_data=${#bibit[@]};
    flag=0
    for((i=0;i<$banyak_data;i++))
    do
        let flag=$(expr "$flag" + "${bibit[i]}")
    done

let tot=$flag/$banyak_data
echo "Rata-rata data array : $tot"
fi
read
clear
;;

4)
printf "\n"
echo "Terima kasih"
exit 1


esac
done