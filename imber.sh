patt="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{8,}$"

scan() {
    local dir="$1"
    local opfile="cred.txt"
    
    # Find all files and scan them
    find "$dir" -type f | while read -r file; do
        grep -P -E "$patt" "$file" >> "$opfile"
    done
}

startscan() {
    read -p "Enter the directory path to start scanning: " scanable
    
    # Check if the directory exists
    if [ ! -d "$scanable" ]; then
        echo "$(tput setaf 1)Directory does not exist.$(tput sgr0)"
        exit 1
    fi
    
    scan "$scanable"
}

cat << "EOF"
  

 ██▓ ███▄ ▄███▓ ▄▄▄▄   ▓█████  ██▀███  
▓██▒▓██▒▀█▀ ██▒▓█████▄ ▓█   ▀ ▓██ ▒ ██▒
▒██▒▓██    ▓██░▒██▒ ▄██▒███   ▓██ ░▄█ ▒
░██░▒██    ▒██ ▒██░█▀  ▒▓█  ▄ ▒██▀▀█▄  
░██░▒██▒   ░██▒░▓█  ▀█▓░▒████▒░██▓ ▒██▒
░▓  ░ ▒░   ░  ░░▒▓███▀▒░░ ▒░ ░░ ▒▓ ░▒▓░
 ▒ ░░  ░      ░▒░▒   ░  ░ ░  ░  ░▒ ░ ▒░
 ▒ ░░      ░    ░    ░    ░     ░░   ░ 
 ░         ░    ░         ░  ░   ░     
                     ░                 
                           by 1nn1t

EOF

echo

startscan

echo "The scan has ended."
