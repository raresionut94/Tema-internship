#!/bin/bash

# Funcție pentru a afișa directorul principal
afiseaza_directorul_principal() {
    echo "Directorul principal:"
    awk -F: '{print $6}' /etc/passwd
}

# Funcție pentru a lista toți utilizatorii
listeaza_toti_utilizatorii() {
    echo "Toate numele de utilizator:"
    awk -F: '{print $1}' /etc/passwd
}

# Funcție pentru a număra utilizatorii
numara_utilizatorii() {
    echo "Numărul de utilizatori:"
    awk 'END {print NR}' /etc/passwd
}

# Funcție pentru a găsi directorul principal al unui utilizator specificat
gaseste_directorul_principal() {
    read -p "Introduceți numele de utilizator: " nume_utilizator
    echo "Directorul principal al utilizatorului $nume_utilizator:"
    awk -F: -v user="$nume_utilizator" '$1 == user {print $6}' /etc/passwd
}

# Funcție pentru a lista utilizatorii cu un anumit interval UID
listeaza_utilizatorii_cu_interval_UID() {
    read -p "Introduceți intervalul UID (exemplu, 1000-1010): " interval_UID
    echo "Utilizatorii cu intervalul UID $interval_UID:"
    awk -F: -v range="$interval_UID" '$3 >= (split(range, a, "-")[1]) && $3 <= (split(range, a, "-")[2]) {print $1}' /etc/passwd
}

# Funcție pentru a găsi utilizatorii cu shell-uri standard
gaseste_utilizatorii_cu_shell_standard() {
    echo "Utilizatorii cu shell-uri standard (/bin/bash sau /bin/sh):"
    awk -F: '$NF ~ /\/(bash|sh)$/{print $1}' /etc/passwd
}

# Funcție pentru a înlocui caracterele "/" cu "\" în întregul fișier /etc/passwd și a redirecționa conținutul într-un fișier nou
inlocuieste_slash_cu_backslash() {
    sed 's/\//\\/g' /etc/passwd > /etc/passwd_nou
    echo "Fișierul cu caracterele înlocuite a fost creat: /etc/passwd_nou"
}

# Funcție pentru a afișa adresa IP privată
afiseaza_adresa_IP_privata() {
    echo "IP privat:"
    hostname -I
}

# Funcție pentru a afișa adresa IP publică
afiseaza_adresa_IP_publica() {
    echo "IP public:"
    curl ifconfig.me
}

# Funcție pentru a comuta la utilizatorul "john" și a afișa directorul principal
comuta_la_utilizatorul_john() {
    su - john -c "echo Directorul principal al lui john: \$HOME"
}

# Apelarea funcțiilor definite mai sus
afiseaza_directorul_principal
listeaza_toti_utilizatorii
numara_utilizatorii
gaseste_directorul_principal
listeaza_utilizatorii_cu_interval_UID
gaseste_utilizatorii_cu_shell_standard
inlocuieste_slash_cu_backslash
afiseaza_adresa_IP_privata
afiseaza_adresa_IP_publica
comuta_la_utilizatorul_john
