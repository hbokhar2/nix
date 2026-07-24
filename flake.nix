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

		nixpkgs-godot44.url = "github:nixos/nixpkgs/e6f23dc08d3624daab7094b701aa3954923c6bbb";
	};


	outputs = { self, nixpkgs, home-manager, catppuccin, nixpkgs-godot44, ... }: {

		nixosConfigurations."Kaguya" = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				./configuration.nix

				catppuccin.nixosModules.catppuccin

				home-manager.nixosModules.home-manager
				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;

					home-manager.extraSpecialArgs = {
						pkgs-godot44 = import nixpkgs-godot44 {
							system = "x86_64-linux";
							config.allowUnfree = true;
						};
					};

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
