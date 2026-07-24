{config, pkgs, ...}: {

	programs.home-manager.enable = true;
	
	imports = [
		./modules/drives.nix
		./modules/desktop_ui.nix
		./modules/shell.nix
		./modules/vesktop.nix
		./modules/apps.nix
	];

	home.stateVersion = "26.05"; 

	home.username = "B0LD";
	home.homeDirectory = "/home/B0LD";

	home.file.".local/share/hypr/stubs".source = "${pkgs.hyprland}/share/hypr/stubs";

}
