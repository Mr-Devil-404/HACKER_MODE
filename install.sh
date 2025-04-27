#!/bin/bash

# HackerMode ULTRA+ Installer by MrDevilEx

# Update & Install Required Packages
echo -e "\033[1;32m[+] Updating packages...\033[0m"
pkg update -y && pkg upgrade -y
pkg install -y zsh git curl wget neofetch

# Show Device Architecture
ARCH=$(uname -m)
echo -e "\033[1;32m[+] Your Device Architecture: $ARCH\033[0m"

# Install Oh-My-Zsh
echo -e "\033[1;32m[+] Installing Oh-My-Zsh...\033[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k Theme
echo -e "\033[1;32m[+] Installing Powerlevel10k...\033[0m"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Clone rxfetch
echo -e "\033[1;32m[+] Installing rxfetch...\033[0m"
git clone https://github.com/Rex4K/rxfetch.git $HOME/rxfetch
chmod +x $HOME/rxfetch/rxfetch

# Create resources folder
mkdir -p $HOME/hackermode/resources

# Download Resources (quotes.txt, fake_scan.sh, ipinfo.sh)
cd $HOME/hackermode/resources

# (Note: তুমি এখানে নিজে resources/ এ কপি করবা, নিচের ফাইল আমি আলাদা দেবো)

# Setup .zshrc
echo -e "\033[1;32m[+] Setting up .zshrc...\033[0m"
cat <<EOF > $HOME/.zshrc
# HackerMode ULTRA+ Zshrc Setup
export TERM=xterm-256color

# Beep Sound
echo -e "\a"
sleep 0.3
echo -e "\a"
sleep 0.5

# Blinking ACCESS GRANTED
for i in {1..3}; do
    echo -e "\033[5;32mACCESS GRANTED\033[0m"
    sleep 0.3
done

# Loading Bar Animation
echo -e "\033[1;32mInitializing HackerMode...\033[0m"
sleep 0.5
loading_bar="▮▮▮▮▮▮▮▮▮▮"
for i in {1..10}; do
    echo -ne "\r\033[1;32mLoading: \${loading_bar:0:\$i}\033[0m"
    sleep 0.2
done
echo -e "\n\033[1;32m[✔️] Loading Complete! Welcome to HackerMode!\033[0m"
sleep 0.5

# Ultra Hacker Logo
echo -e "\033[1;32m"
echo "██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ ███╗   ███╗ ██████╗ ██████╗ ███████╗"
echo "██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗████╗ ████║██╔═══██╗██╔══██╗██╔════╝"
echo "███████║███████║██║     █████╔╝ █████╗  ██████╔╝██╔████╔██║██║   ██║██║  ██║█████╗  "
echo "██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔═══╝ ██║╚██╔╝██║██║   ██║██║  ██║██╔══╝  "
echo "██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║     ██║ ╚═╝ ██║╚██████╔╝██████╔╝███████╗"
echo "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝"
echo -e "\033[0m"
sleep 0.5

# Developer Info
echo -e "\033[1;32m[✔️] DEVELOPER : \033[1;37mMrDevilEx"
echo -e "\033[1;32m[✔️] FACEBOOK  : \033[1;37mDevil Termux World"
echo -e "\033[1;32m[✔️] TOOL      : \033[1;37mTermux Theme"
echo -e "\033[1;32m[✔️] STATUS    : \033[1;37mFREE"
echo -e "\033[1;32m[✔️] VERSION   : \033[1;37m1.0"

# QR Code Banner (Optional)

# Display random hacker quote
bash \$HOME/hackermode/resources/random_quote.sh

# Fetch IP Info
bash \$HOME/hackermode/resources/ipinfo.sh

# Run Fake Virus Scan
bash \$HOME/hackermode/resources/fake_scan.sh

# Run rxfetch for device info
bash \$HOME/rxfetch/rxfetch

EOF

echo -e "\033[1;32m[+] Setup Complete! Please restart Termux or type 'zsh'\033[0m"
