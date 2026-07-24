{ config, pkgs, ... }: {

	home.packages = [
		pkgs.vesktop
	];

	nixpkgs.overlays = [
		(final: prev: {
		 vesktop = prev.vesktop.override {
		 	electron = final.electron_41; 
		 	};
		 })
	];

}
