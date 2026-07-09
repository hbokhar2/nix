{ config, lib, pkgs, ... }: {

	imports =
		[
			./hardware-configuration.nix			
			./modules/system.nix
			./modules/display.nix
			./modules/hardware.nix
			./modules/drives.nix
			./modules/programs.nix
		];

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	system.stateVersion = "26.05";

	nixpkgs.config.allowUnfree = true;

}
