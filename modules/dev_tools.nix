{ ...}: {

	environment.systemPacckages = with 
		wget
		curl
		file
		ripgrep
		less
		fzf
		bat
		unzip
		zip
		dosfstools
		btop
		neovim
		tmux
		gitFull
		openssh
		bat
		clang
		clang-tools
		cmake
		cmake-language-server
		jdk21
		gnumake
		python315
		scons
		pyright
		lua-language-server
		gdb
	];

}
