# -- [ This file is used to install all the necessary programs I would need on my Windows computer to have my programs and my tools for neovim to function properly. It is intended to get my workspace developer ready with little effort] --

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Installation of Git and Node (First for safety measures)
choco install git -y
choco install nodejs -y


#install Neovim and tools for It
choco install neovim -y


# Install Dev tools
choco install vscode -y
choco install notepadplusplus -y
choco install lazygit -y


# Install programs
choco install heroku-cli -y
choco install spotify -y
choco install postman -y

# Install command line tools (linux)
choco install nano -y
choco install grep -y

# Install web browsers
choco install brave -y
choco install googlechrome -y

# Install password manager
choco install keepass -y


#Install productivity tools
choco install notion -y
choco install flow-launcher -y
choco install obs-studio -y
choco install teamviewer -y

# Install Languages
choco install python3 -y 
choco install zig -y
