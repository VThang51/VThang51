#!/bin/bash

if [ "$1" == "firefox" ]; then
	install -d -m 0755 /etc/apt/keyrings
	wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
	echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
	apt update
fi
if [ "$1" == "sources.list" ]; then
	mv /etc/apt/sources.list /etc/apt/sources.list.bak
	curl -LSs https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/utils/sources.list | tee /etc/apt/sources.list > /dev/null
fi
if [ "$1" == "hyprland-dep1" ]; then
	apt install -y meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev libtomlplusplus3 libre2-dev
fi
if [ "$1" == "hyprland-dep2" ]; then
	apt install -y git libudis86-dev libpugixml-dev libwayland-dev hwdata wayland-protocols libgbm-dev libdisplay-info-dev libzip-dev libcairo2-dev librsvg2-dev libtomlplusplus-dev libmagic-dev
fi
if [ "$1" == "hyprland-git" ]; then
	git clone https://github.com/hyprwm/Hyprland.git hyprwm/Hyprland
	git clone https://github.com/hyprwm/aquamarine.git hyprwm/aquamarine
	git clone https://github.com/hyprwm/hyprlang.git hyprwm/hyprlang
	git clone https://github.com/hyprwm/hyprcursor.git hyprwm/hyprcursor
	git clone https://github.com/hyprwm/hyprutils.git hyprwm/hyprutils
	git clone https://github.com/hyprwm/hyprgraphics.git hyprwm/hyprgraphics
	git clone https://github.com/hyprwm/hyprwayland-scanner.git hyprwm/hyprwayland-scanner
fi
if [ "$1" == "example" ]; then
	echo "example"
fi
