default: install-vim install-zsh set-zsh
debian: debian-vim debian-zsh set-zsh

install-vim:
	sudo pacman -S vim cmake fzf
	cp vimrc ~/.vimrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir ~/.vim/plugged
	vim -c \:PlugInstall
	python ~/.vim/plugged/YouCompleteMe/install.py

install-zsh:
	sudo pacman -S zsh zsh-autosuggestions autojump thefuck python-virtualenvwrapper
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	cp zshrc ~/.zshrc
	cp -r /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins/
	cp -r /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/
	cp -r /usr/share/zsh-theme-powerlevel9k/ ~/.oh-my-zsh/themes/powerlevel9k
	
install-rofi:
	cp -r rofi ~/.config/

install-3:
	cp -r i3 ~/.config/


install-packages:
	yaourt -S --needed -noconfirm `cat packages.txt`

enable-service:
	sudo systemctl enable tlp tlp-sleep
	sudo systemctl disable systemd-rfkill
	sudo tlp start

debian-vim:
	git clone https://github.com/vim/vim.git ./tmp
	cd tmp/src
	make
	cd ../..
	rm -rf tmp
	cp vimrc ~/.vimrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir ~/.vim/plugged
	vim -c \:PlugInstall
	python ~/.vim/plugged/YouCompleteMe/install.py
	git clone --depth 1 https://github.com/junegunn/fzf.git /usr/share/fzf
	/usr/share/fzf/install

debian-zsh:
	sudo apt-get install zsh curl python-thefuck python-virtualenv python3-virtualenv virtualenvwrapper
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

set-zsh:
	chsh -s `which zsh`
