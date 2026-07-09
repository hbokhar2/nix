{ config, pkgs, ... }: {

	programs.home-manager.enable = true;
	
	imports = [
		./modules/drives.nix
		./modules/desktop-ui.nix
		./modules/shell.nix
	];

	home.stateVersion = "26.05"; 

	home.username = "B0LD";
	home.homeDirectory = "/home/B0LD";

	home.packages = [
		pkgs.prismlauncher
		pkgs.gamescope
		pkgs.obs-studio
		pkgs.gimp
		pkgs.fastfetch
		pkgs.vesktop
		pkgs.font-manager
		pkgs.keepassxc
		pkgs.pywal16
		pkgs.pavucontrol
		pkgs.brave
		pkgs.protonup-qt
	];

}
