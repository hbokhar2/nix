{
	description = "NixOS System Flake Configuration ";


	inputs = {

		#nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		#catppuccin.url = "github:catppuccin/release-26.05";
		catppuccin.url = "github:catppuccin/nix";

	};


	outputs = { self, nixpkgs, home-manager, catppuccin, ... }: {

		nixosConfigurations."Kaguya" = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				./configuration.nix

				catppuccin.nixosModules.catppuccin

				home-manager.nixosModules.home-manager
				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;

					home-manager.users.B0LD =  {
						imports = [
							./users/B0LD/home.nix

							catppuccin.homeModules.catppuccin
						];
					};
				}
			];
		};


		nixosConfigurations."Chi" = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				./configuration.nix
			];
		};

	};
}
