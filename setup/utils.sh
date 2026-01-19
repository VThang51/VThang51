#!/bin/bash

if [ "$1" == "firefox" ]; then
	install -d -m 0755 /etc/apt/keyrings
	wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
	echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
fi
if [ "$1" == "sources.list" ]; then
	curl -sS https://raw.githubusercontent.com/VThang51/VThang51/refs/heads/main/setup/utils/sources.list | tee /etc/apt/sources.list > /dev/null
fi
if [ "$1" == "hyprland" ]; then
	apt install -y meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev libtomlplusplus3 libre2-dev git
	git clone https://github.com/hyprwm/Hyprland hyprwm/Hyprland 
	git clone https://github.com/hyprwm/aquamarine hyprwm/aquamarine
	git clone https://github.com/hyprwm/hyprlang hyprwm/hyprlang
	git clone https://github.com/hyprwm/hyprcursor hyprwm/hyprcursor
	git clone https://github.com/hyprwm/hyprutils hyprwm/hyprutils
	git clone https://github.com/hyprwm/hyprgraphics hyprwm/hyprgraphics
	git clone https://github.com/hyprwm/hyprwayland-scanner hyprwm/hyprwayland-scanner
fi
if [ "$1" == "example" ]; then
	echo "example"
fi
