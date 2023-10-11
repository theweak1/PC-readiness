# -- [ This file is used to install all the necessary programs I would need on my Windows computer to have my programs and my tools for neovim to function properly. It is intended to get my workspace developer ready with little effort] --

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Define the list of packages to be installed or upgraded
$packages = @(
    # Installation of Git and Node (First for safety measures)
    "git",
    "nodejs",

    # Install Neovim and tools for It
    "neovim",

    # Install Dev tools
    "vscode",
    "notepadplusplus",
    "lazygit",

    # Install new form of PowerShell
    "powershell-core",

    # Install programs
    "heroku-cli",
    "spotify",
    "postman",

    # Install command line tools (Linux)
    "nano",
    "grep",

    # Install web browsers
    "brave",

    # Install password manager
    "keepass",

    # Install productivity tools
    "notion",
    "flow-launcher",
    "obs-studio",
    "teamviewer",

    # Install Languages
    "python3",
    "zig"
)

# Get the list of installed packages
$installedPackages = choco list --local-only | ForEach-Object { ($_ -split ' ')[0] }

foreach ($package in $packages) {
    if ($installedPackages -contains $package) {
        # If the package is installed, upgrade it
        Write-Host "Upgrading $package"
        choco upgrade $package -y
    } else {
        # If the package is not installed, install it
        Write-Host "Installing $package"
        choco install $package -y
    }
}

# install latest lts version of node
nvm install lts

#install version 18.17.1
nvm install 18.17.1
