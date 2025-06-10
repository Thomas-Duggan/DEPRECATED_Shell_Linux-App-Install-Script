

   ####      LATEST UPDATE: June 9th 2025      ######



################################################################################################

#    Emoji Reference Key:
#   📦 - Requires Flatpak
#   ⚠️ - Has Prerequisites to work properly
#   ❗ - Highly Recommended

################################################################################################

        ###############
        #  IMPORTANT  #         > [ Always install & run regardless of PC usage ] <
        ###############
  
#❗Update Package List / Update Existing Packages
sudo apt update -y
sudo apt upgrade -y 

#❗Flatpak Package Installer
sudo apt install flatpak
sudo apt install -y gnome-software-plugin-flatpak
flatpak remote-add -y --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

################################################################################################

        #################
        #  USEFUL APPS  #       > [ Install if you plan on using this PC as your primary computer ] <
        #################

#❗Predictive Terminal
sudo apt install -y fish

#📦 Pipewire Patchbay (⚠️ Requires Pipewire & ❗ Highly Recommended if using Pipewire Audio)
    # flatpak install -y org.pipewire.Helvum
# Note: Test for Pipewire / PulseAudio using: pactl info. Look for "(on PipeWire X.X.X)"
# Note: How to switch to Pipewire audio: https://ubuntuhandbook.org/index.php/2022/04/pipewire-replace-pulseaudio-ubuntu-2204/

#❗Terminal-Based File Manager
sudo apt install -y ncdu
# Note: Run with command "ncdu"

#📦 Extension Manager (❗Highly Recommended for >UBUNTU ONLY<)
    # flatpak install flathub com.mattjakeman.ExtensionManager
# Note: Install on >Ubuntu only<, Linux Mint has it's own version

#❗Button Remapper
sudo apt install input-remapper -y
# Note: How to use: https://github.com/sezanzeb/input-remapper

# Android Phone notifications / controller on PC
    # sudo apt-get install kdeconnect -y
# Note: RAM heavy, but nice to have for some people

#📦 Clam Antivirus
    # flatpak install flathub com.gitlab.davem.ClamTk
# Note: Only reccomended if you REALLY want an antivirus, as it MAY break steam installs

# Human Readable Table of Processes
sudo apt install htop -y

# Allows for easy changing power profiles like on Windows
sudo apt install power-profiles-daemon
# Note: Also Recommended:
    # powerprofilesctl set performance

################################################################################################

        ####################
        #  GAME LAUNCHERS  #        > [ Install if you will be gaming on this PC ] <
        ####################

#❗Steam
sudo add-apt-repository -y multiverse
sudo apt-get install steam -y
# Note: Do >NOT< download flatpak version >EVER<

#📦❗Steam Proton Issue Helper 
flatpak install flathub com.github.Matoking.protontricks -y

#📦❗Steam GEProton Installation Helper
flatpak install flathub net.davidotek.pupgui2 -y

#📦 Lutris Game Manager
    # flatpak install flathub net.lutris.Lutris -y
# Note: I've never actually found a use for this tbh but people (not me) recommend it.

#📦 Epic Games Launcher
flatpak install flathub com.heroicgameslauncher.hgl -y
# Note: >DOES NOT< support Fortnite, only use this for the free games.

# Wayland Android Emulator (⚠️ Requires Wayland Compatable DE)
    # sudo apt install curl ca-certificates -y
    # curl -s https://repo.waydro.id | sudo bash
    # sudo apt install waydroid -y
# Note: Only install if you want to run >ROBLOX< or other android apps (NOT FORTNITE)
# Note: How to launch Wayland on Mint: https://youtu.be/i_x_awncu1c?si=qKaukT69-Tico2kY&t=25

# Updated Roblox installer
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
# Note: Run using: flatpak run org.vinegarhq.Sober

################################################################################################

        ###########
        #  OTHER  #                 > [ Apps / Scripts that are nice to have ] <
        ###########

#📦❗Modded Discord Client (Vencord)
flatpak install -y flathub dev.vencord.Vesktop

#📦 Minecraft Bedrock
flatpak install -y flathub io.mrarm.mcpelauncher

#📦 Minecraft Java
flatpak install -y org.prismlauncher.PrismLauncher

#📦 Google Chrome (❗Highly Recommened if Firefox will be / has been uninstalled)
flatpak install -y flathub com.google.Chrome

# Waydroid Install Helper Script (❗Highly Recommended if Waydroid is installed)
    # sudo apt install lzip -y
    # git clone https://github.com/casualsnek/waydroid_script -y
    # cd waydroid_script
    # python3 -m venv venv -y
    # venv/bin/pip install -r requirements.txt
    # sudo venv/bin/python3 main.py -y
    # cd ~
# Note: Run after installing Waydroid

#📦 Microsoft OneNote Alternative
    # flatpak install flathub com.github.flxzt.rnote -y
# Note: Not necessary, just threw it in here because I needed a place to put it.

# Pipewire Volume Mixer (⚠️ Requires Pipewire & ❗ Highly Recommended if using Pipewire Audio)
    # sudo apt install pavucontrol

#❗Android "Samsung DeX" Linux Replacement (Android screen clone)
sudo apt install ffmpeg libsdl2-2.0-0 adb wget \ -y
gcc git pkg-config meson ninja-build libsdl2-dev \ 
libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev \
libswresample-dev libusb-1.0-0 libusb-1.0-0-dev 
git clone https://github.com/Genymobile/scrcpy -y
cd scrcpy
./install_release.sh
cd ~
# Updater:
git pull
./install_release.sh
# Launch application in terminal with:
    # scrcpy --keyboard=uhid --mouse=aoa --fullscreen --gamepad=aoa
# Highly reccomended to set up Alias:
    # alias dex="scrcpy --keyboard=uhid --mouse=aoa --fullscreen --gamepad=aoa"
# Note: >>WORKS WITH ANY ANDROID PHONE<<, but requires developer mode, USB debugging, and must be tethered via USB to PC before launch
# Note: Use ALT + F4, ALT + TAB, or "xkill" to close

#📦 Python Interpreter
    # flatpak install org.thonny.Thonny
    
#📦 DVD to Video converter
    # flatpak install flathub com.makemkv.MakeMKV

################################################################################################

        ################
        #  DEBLOATING  #            > [ Uninstalling bloatware ] <
        ################

sudo apt remove --purge firefox -y
sudo apt remove --purge libreoffice-core -y
sudo apt remove --purge libreoffice-common -y
sudo apt remove --purge hexchat -y
sudo apt remove --purge celluloid -y
sudo apt remove --purge hypnotix -y
sudo apt remove --purge webapp-manager -y
sudo apt remove --purge mintchat -y
sudo apt remove --purge warpinator -y
sudo apt remove --purge transmission-gtk -y
sudo apt remove --purge seahorse -y
sudo apt remove --purge imagemagick -y

sudo apt autoremove -y 
sudo apt autopurge -y
sudo apt autoclean -y
sudo apt clean -y

################################################################################################



echo "Don't forget to restart your PC now."

