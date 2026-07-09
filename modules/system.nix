{config, pkgs, ...}: {
	boot = {

		loader = {
			grub.enable = true;
			grub.efiSupport = true;
			grub.efiInstallAsRemovable = true;
			efi.efiSysMountPoint = "/boot";
			grub.device = "nodev";
			grub.useOSProber = true;
		};

		supportedFilesystems = [ "ntfs" ];

		kernelPackages = pkgs.linuxPackages_latest;

	};

	programs.zsh.enable = true;

	networking = {
		hostName = "Kaguya";
		networkmanager.enable = true;
	};

	time.timeZone = "America/Phoenix";

	services.printing.enable = true;

	services = {
		pipewire = {
			enable = true;
			pulse.enable = true;
		};

		udisks2 = {
			enable = true;
		};
	};

	users.defaultUserShell = pkgs.zsh;
	users.users.B0LD = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" "video" "audio" "seat" "input" "render" ];
		packages = [
		];
	};

	environment.systemPackages = [

		pkgs.kitty
		pkgs.wget
		pkgs.curl
		pkgs.file
		pkgs.ripgrep
		pkgs.less
		pkgs.fzf
		pkgs.bat
		pkgs.unzip
		pkgs.zip
		pkgs.dosfstools
		pkgs.btop
		pkgs.neovim
		pkgs.tmux
		pkgs.gitFull
		pkgs.openssh
		pkgs.bat
		pkgs.clang
		pkgs.clang-tools
		pkgs.cmake
		pkgs.jdk21
		pkgs.gnumake
		pkgs.python315
		pkgs.pyright
		pkgs.lua-language-server
		pkgs.gdb
		pkgs.imv

	];

}
