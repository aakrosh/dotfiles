all: vim git bash R python perl

vim:
	$(MAKE) backup f=~/.vimrc
	cp .vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	cd ~/.vim/bundle && git clone https://github.com/gabrielelana/vim-markdown.git
	cd ~/.vim/bundle && git clone https://github.com/broadinstitute/vim-wdl.git
	
git:
	$(MAKE) backup f=~/.gitconfig
	cp .gitconfig ~/.gitconfig

R:
	$(MAKE) backup f=~/.Rprofile
	cp .Rprofile ~/.Rprofile

bash:
	$(MAKE) backup f=~/.bashrc
	cp .bashrc ~/.bashrc

python: ~/.pyenv
	# install pyenv if it is not installed
ifeq (,$(wildcard ~/.pyenv))
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	echo 'export PYENV_ROOT="$(HOME)/.pyenv"' >> ~/.bashrc
	echo 'export PATH="$(PYENV_ROOT)/bin:$(PATH)"' >> ~/.bashrc
	echo 'eval "$(pyenv init -)"' >> ~/.bashrc
	exec $(SHELL)
endif

perl:
	# install perlbrew if it is not installed
ifeq (,$(wildcard ~/.perlbrew))
	wget -O - https://install.perlbrew.pl | bash
endif

backup:
	if [ -f $(f) ]; then cp $(f) $(f).bak; fi
