all: vim git bash R 

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
	$(MAKE) backup f=~/.bash_profile
	cp .bash_profile ~/.bash_profile
	$(MAKE) backup f=~/.bashrc
	cp .bashrc ~/.bashrc

backup:
	if [ -f $(f) ]; then cp $(f) $(f).bak; fi
