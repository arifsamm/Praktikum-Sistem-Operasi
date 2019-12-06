
utama(){
loop=1;
index_nohp=0;
index_nama=0;
index_alamat=0;
index_email=0;


declare -a alamat
declare -a nama
declare -a nohp
declare -a pil_kopi
declare -a email

while [[ loop -eq 1 ]]; do
    echo "========= Kopi Bubuk =========";
    echo "1. Identitas pembeli";
    echo "2. Daftar dan Harga Kopi";
    echo "3. Pembelian"
    echo "4. Transaksi";
    echo "5. Keluar Program";
    echo -n "Masukkan Pilihan :"
    read temp;
    clear 

    case "$temp" in
        "1" )
        echo -n "Nama 		:";
        read nama[$index_nama];
        let index_nama=$index_nama+1;

        echo -n "Alamat		:"
        read alamat[$index_alamat];
        let index_alamat=$index_alamat+1;

        echo -n "Nomor HP 	:"
        read nohp[$index_nohp];
        let index_nohp=$index_nohp+1;

        echo -n "Email 		:"
        read email[index_email];
        let index_email=$index_email+1

        clear

            ;;

        "2" )
		echo "1. Arabica Toraja"		
		echo "Harga : Rp50.000"
        
		echo "2. Arabica Gayo"
        echo "Harga : Rp60.000"

		echo "3. Arabica Java"
        echo "Harga : Rp55.000"

		echo "4. Arabica Papua"
		echo "Harga : Rp55.000"

		echo "5. Arabica Bali"
		echo "Harga : Rp55.000"

		echo "6. Arabica Timor Leste"
		echo "Harga : Rp50.000"

		echo "7. Robusta Aceh"
		echo "Harga : Rp35.000"

		echo "8. Robusta Kerinci"
		echo "Harga : Rp30.000"

		echo "9. Robusta Java"
		echo "Harga : Rp35.000"

		echo "10. Robusta Dampit"
		echo "Harga : Rp32.000"
		echo ""
		;;

		"3" )
		echo -n "Masukkan Jumlah kopi yang akan dibeli 	: "
		read kopi

		for (( i = 1; i <= kopi; i++ )); do
			echo -n "Masukkan Pilihan Kopi 	: "
			read pil_kopi[i]
		done

		    ;;

        "4" )
		HargaTotal=0
        for (( i = 1; i <= kopi; i++ )); do
        	if [[ pil_kopi[i] -eq 1 ]]; then
        		let HargaTotal=HargaTotal+50000
        	elif [[ pil_kopi[i] -eq 2 ]]; then
        		let HargaTotal=HargaTotal+60000
        	elif [[ pil_kopi[i] -eq 3 ]]; then
        		let HargaTotal=HargaTotal+55000
        	elif [[ pil_kopi[i] -eq 4 ]]; then
        		let HargaTotal=HargaTotal+555000
        	elif [[ pil_kopi[i] -eq 5 ]]; then
        		let HargaTotal=HargaTotal+55000
        	elif [[ pil_kopi[i] -eq 6 ]]; then
        		let HargaTotal=HargaTotal+50000
        	elif [[ pil_kopi[i] -eq 7 ]]; then
        		let HargaTotal=HargaTotal+35000
        	elif [[ pil_kopi[i] -eq 8 ]]; then
        		let HargaTotal=HargaTotal+30000
        	elif [[ pil_kopi[i] -eq 9 ]]; then
        		let HargaTotal=HargaTotal+35000
        	elif [[ pil_kopi[i] -eq 10 ]]; then
        		let HargaTotal=HargaTotal+32000
        	fi
        done

        for (( i = 0; i < index_nama; i++ )); do
        	echo "Nama 		:${nama[$i]}"
        	echo "Alamat  	:${alamat[$i]}"
        	echo "Nomor HP  	:${nohp[$i]}"
        	echo "Email 		:${email[$i]}"
        done
        	echo "Harga Total 	:$HargaTotal"

            ;;
        
        "5" )
	
        let loop=2;
            ;;
    esac

done
}


kedua(){
	membuatfile(){
	echo "Nama File :"
	read nama_file
	nano nama_file $nama_file
}

	menjalankanfile(){
	ls -l

	echo "File yang dijalankan : "
	read nama_file
	bash nama_file $nama_file
	echo "Berhasil"
}

	aksesinternet(){

	firefox
}

	deadlock(){
	echo "Memasuki area deadlock"
	echo "Apakah anda yakin? (y/n)"
	echo "Jika ingin berhenti tekan ctrl+c"
	read deal

	if [[ $deal == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
	if [[ $deal ]]; then
	echo "HMMMMM"
fi	
}

while [[ pilih=1 ]]; do
	echo "====== Menu Sistem Operasi ======"
	echo "" 
	echo "1. Membuat file"
	echo "2. Menjalankan file"				   
	echo "3. Akses internet"
	echo "4. Deadlock"
	echo "5. Mematikan Komputer"
	echo "6. Keluar							   	   "
	echo "================================="
	echo -n "Masukkan pilihan anda "
	read pilih
	clear


	case "$pilih" in 
		"1") membuatfile; 
					;; 
		"2") menjalankanfile;
					 ;;
 	    "3") aksesinternet;
			;; 
		"4") deadlock; 
			;; 
		"5") poweroff ; 
			;;
 		"6")break;
 			 ;;	
 			  esac

done

}
while [[ pilih=1 ]]; do
	echo "====== Menu ======"
	echo "1. Pembelian Kopi"
	echo "2. Sistem Operasi"
	echo "3. Keluar Program"
	echo "pilih"
	read pilih
	clear

case $pilih in
		1 )
		utama
			;;
		2 )
		kedua
			;;
		3 )
		exit
			;;
	esac	
done