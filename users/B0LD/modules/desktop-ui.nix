{ config, pkgs, ... }: {

	programs = {

		waybar = {
			enable = true;
		};

	};

	gtk = {
		enable = true;

  		gtk3.extraConfig = {
    			gtk-application-prefer-dark-theme = true;
  		};

  		gtk4.extraConfig = {
    			gtk-application-prefer-dark-theme = true;
  		};
	};

	catppuccin = {
		enable = true;
		flavor = "mocha";
		accent = "lavender";

		brave.enable = true;
		imv.enable = true;
		qt5ct.enable = true;
		tmux.enable = true;
		vesktop.enable = true;
		waybar.enable = false;

		gtk.icon.enable = true;
	};

	home.packages = [
		pkgs.hyprpaper
	];

}
