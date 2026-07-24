{pkgs, pkgs-godot44, ...}: {

	home.packages = with pkgs; [
		prismlauncher
		gamescope
		obs-studio
		gimp
		fastfetch
		font-manager
		keepassxc
		pywal16
		pavucontrol
		brave
		protonup-qt
		tradingview
		hyprshot
		quickshell
	];

}
