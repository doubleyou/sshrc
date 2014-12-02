all:
	@echo "Run \`make install\`"

install:
	cp -r . ~/.sshrc.d
	rm -rf ~/.sshrc.d/.git
	echo "source ~/.sshrc.d/.bashrc" >> ~/.bash_profile
