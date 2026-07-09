{ config, ... }: {
	programs = {
		zsh = {
			enable = true;
			enableCompletion = true;
			autosuggestion.enable = true;
			syntaxHighlighting.enable = true;
			defaultKeymap = "viins";

			shellAliases = {
				nix = "/etc/configuration.nix";

				update = "sudo nix flake update --flake path:/etc/nixos";
				rebuild = "sudo nixos-rebuild switch --flake /etc/nixos/#Kaguya";
			};

			history = {
				size = 100000;
				path = "${config.home.homeDirectory}/.zsh_history";
				ignoreAllDups = true;
			};
		};
	};
}
