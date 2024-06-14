#!/bin/bash

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Masukkan kata sandi untuk pengguna Deploy dan Database (Jangan gunakan karakter khusus):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Masukkan tautan Github dari instalasi yang ingin Anda pasang:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Berikan nama untuk Instansi/Perusahaan yang akan dipasang (Jangan gunakan spasi atau karakter khusus, Gunakan huruf kecil):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Berikan jumlah Koneksi/Whats yang dapat ${instancia_add} daftarkan:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Berikan jumlah Pengguna/Petugas yang dapat ${instancia_add} daftarkan:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ketik domain FRONTEND/PANEL untuk ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ketik domain BACKEND/API untuk ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ketik port FRONTEND untuk ${instancia_add}; Contoh: 3000 sampai 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ketik port BACKEND untuk instansi ini; Contoh: 4000 sampai 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_redis_port() {
  
  print_banner
  printf "${WHITE} 💻 Ketik port REDIS/JADWAL PESAN untuk ${instancia_add}; Contoh: 5000 sampai 5999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " redis_port
}

get_empresa_delete() {
  
  print_banner
  printf "${WHITE} 💻 Ketik nama Instansi/Perusahaan yang akan Dihapus (Ketik nama yang sama saat instalasi):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_delete
}

get_empresa_atualizar() {
  
  print_banner
  printf "${WHITE} 💻 Ketik nama Instansi/Perusahaan yang ingin Anda Perbarui (Ketik nama yang sama saat instalasi):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_atualizar
}

get_empresa_bloquear() {
  
  print_banner
  printf "${WHITE} 💻 Ketik nama Instansi/Perusahaan yang ingin Anda Blokir (Ketik nama yang sama saat instalasi):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_bloquear
}

get_empresa_desbloquear() {
  
  print_banner
  printf "${WHITE} 💻 Ketik nama Instansi/Perusahaan yang ingin Anda Buka Blokir (Ketik nama yang sama saat instalasi):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_desbloquear
}

get_empresa_dominio() {
  
  print_banner
  printf "${WHITE} 💻 Ketik nama Instansi/Perusahaan yang ingin Anda Ubah Domainnya (Perhatikan untuk mengubah domain perlu mengetik 2, meskipun hanya ingin mengubah 1):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " empresa_dominio
}

get_alter_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ketik domain FRONTEND/PANEL BARU untuk ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_url
}

get_alter_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Ketik domain BACKEND/API BARU untuk ${empresa_dominio}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_url
}

get_alter_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ketik port FRONTEND dari Instansi/Perusahaan ${empresa_dominio}; Port harus sama dengan yang diberikan saat instalasi ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_frontend_port
}


get_alter_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Ketik port BACKEND dari Instansi/Perusahaan ${empresa_dominio}; Port harus sama dengan yang diberikan saat instalasi ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " alter_backend_port
}


get_urls() {
  get_mysql_root_password
  get_link_git
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_update() {
  get_empresa_atualizar
  frontend_update
  backend_update
}

software_delete() {
  get_empresa_delete
  deletar_tudo
}

software_bloquear() {
  get_empresa_bloquear
  configurar_bloqueio
}

software_desbloquear() {
  get_empresa_desbloquear
  configurar_desbloqueio
}

software_dominio() {
  get_empresa_dominio
  get_alter_frontend_url
  get_alter_backend_url
  get_alter_frontend_port
  get_alter_backend_port
  configurar_dominio
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Selamat datang di Manajer Whaticket, Pilih aksi berikutnya!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [0] Pasang Whaticket\n"
  printf "   [1] Perbarui Whaticket\n"
  printf "   [2] Hapus Whaticket\n"
  printf "   [3] Blokir Whaticket\n"
  printf "   [4] Buka Blokir Whaticket\n"
  printf "   [5] Ubah domain Whaticket\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    0) get_urls ;;

    1) 
      software_update 
      exit
      ;;

    2) 
      software_delete 
      exit
      ;;
    3) 
      software_bloquear 
      exit
      ;;
    4) 
      software_desbloquear 
      exit
      ;;
    5) 
      software_dominio 
      exit
      ;;        

    *) exit ;;
  esac
}