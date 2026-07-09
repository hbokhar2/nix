{ config, pkgs, ... }: {

	services = {

		xserver.enable = true;

		displayManager.ly = {
			enable = true;
			settings = {
				animation = "matrix";
				hide_borders = true;
			};
		};

		gvfs.enable = true;
		tumbler.enable = true;

	};

	programs = {

		hyprland = {

			enable = true;
			xwayland.enable = true;

		};

		thunar = {

			enable = true;

		};

	};

	environment.systemPackages = [
		pkgs.fuzzel
		pkgs.waybar
	];

	fonts.packages = [
		pkgs.jetbrains-mono
		pkgs.nerd-fonts.jetbrains-mono
	];

	catppuccin = {
		enable = true;
		accent = "lavender";

		gtk.icon.enable = true;
		grub.enable = true;
	};

}
