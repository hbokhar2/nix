{ config, pkgs, ... }: {

	services = {

		hyprpaper = { 

			enable = true;

			settings = {
				ipc = "on";
				preload = [
					"/home/B0LD/Pictures/Wallpapers/red-abstract-ag-uw.jpg"
				];

				wallpaper = [
				{
					monitor = "DP-3";
					path = "/home/B0LD/Pictures/Wallpapers/red-abstract-ag-uw.jpg";
					fit_mode = "contain";
				}
				{
					monitor = "DP-4";
					path = "/home/B0LD/Pictures/Wallpapers/red-abstract-ag-uw.jpg";
					fit_mode = "cover";
				}
				];
			};

		};

	};


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

}
