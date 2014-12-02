all:
	@echo "Run \`make install\`"

install:
	cp -r . ~/.sshrc.d
	echo "source ~/.sshrc.d/.bashrc" >> ~/.bash_profile
