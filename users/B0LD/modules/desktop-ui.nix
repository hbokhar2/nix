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
		pkgs.fuzzel
		pkgs.waybar
		pkgs.hyprpicker
	];

	home.sessionVariables = {
		XCURSOR_SIZE = "24";
		HYPRCURSOR_SIZE = "24";

		LIBVA_DRIVER_NAME = "nvidia";
		__GLX_VENDOR_LIBRARY_NAME = "nvidia";
		NVD_BACKEND = "direct";

		QT_QPA_PLATFORM = "wayland";
		QT_WAYLAND_FORCE_DPI = "physical";
		ELECTRON_OZONE_PLATFORM_HINT = "wayland";
	};

}
