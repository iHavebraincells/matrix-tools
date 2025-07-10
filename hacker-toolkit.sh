#!/bin/bash

# Colors for the terminal
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Clear screen
clear

# Title
echo -e "${GREEN}"
echo "==================================="
echo "      HACKER TOOLKIT TERMINAL      "
echo "==================================="
echo -e "${NC}"

while true; do
    echo -e "${GREEN}Select an option:${NC}"
    echo "1) IP Tracer"
    echo "2) John the Ripper"
    echo "3) Nmap Scan"
    echo "4) Exit"
    echo -n "Enter choice: "
    read choice

    case $choice in
        1)
            echo -e "${GREEN}Running IP Tracer...${NC}"
            read -p "Enter IP address or domain: " target
            curl ipinfo.io/$target
            ;;
        2)
            echo -e "${GREEN}Starting John the Ripper...${NC}"
            # Replace this line with your john command or script path
            john --help
            ;;
        3)
            echo -e "${GREEN}Running Nmap scan...${NC}"
            read -p "Enter target IP or domain: " target
            nmap $target
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac
    echo
done
