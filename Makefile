default: install-packages enable-services link-config set-zsh

install-packages:
	yaourt -S --needed -noconfirm `cat packages.txt`

enable-service:
	sudo systemctl enable tlp tlp-sleep
	sudo systemctl disable systemd-rfkill
	sudo tlp start

set-zsh:
	chsh -s `which zsh`
