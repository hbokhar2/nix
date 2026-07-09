{ config, lib, pkgs, ... }:

{
	imports =
		[
			./hardware-configuration.nix			
			./modules/system.nix
			./modules/display.nix
			./modules/hardware.nix
			./modules/drives.nix
		];

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	system.stateVersion = "26.05";

	nixpkgs.config.allowUnfree = true;
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
			pkgs.jetbrains-mono
			pkgs.nerd-fonts.jetbrains-mono
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

	programs.steam = {
		enable = true;
		remotePlay.openFirewall = true;
		dedicatedServer.openFirewall = true;
	};

}
