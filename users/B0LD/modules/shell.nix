{ config, pkgs, ... }: {

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

			initContent = ''

				fastfetch

				'';

		};

		fastfetch = {

			enable = true;

			settings = {

				logo = {

					source = "nixos_medium";

				};

				modules = [ "break"

				{
					type = "cpu";
					key = "╭─";
					format = "{1}";
					keyColor = "#B0B0B0";
				}

				{
					type = "gpu";
					key = "├─";
					format = "{2}";
					keyColor = "#B0B0B0";
				}

				{
					type = "memory";
					key = "├─";
					keyColor = "#B0B0B0";
				}

				{
					type = "swap";
					key = "╰─󰯍 ";
					keyColor = "#B0B0B0";
				}

				"break"

				{
					type = "shell";
					key = "╭─";
					keyColor = "#B0B0B0";
				}

				{
					type = "terminal";
					key = "├─";
					keyColor = "#B0B0B0";
				}

				{
					type = "packages";
					key = "├─󰙵 ";
					keyColor = "#B0B0B0";
				}

				{
					type = "de";
					key = "├─󰋹";
					keyColor = "#B0B0B0";
				}

				{
					type = "wm";
					key = "╰─󰍹";
					keyColor = "#B0B0B0";
				}

				"break"

				{
					type = "title";
					key = "╭─";
					format = "{1}@{2}";
					keyColor = "#B0B0B0";
				}

				{
					type = "os";
					key = "├─󰣇";
					keyColor = "#B0B0B0";
				}

				{
					type = "command";
					key = "├─";
					text = "sh ~/.config/fastfetch/os_age.sh";
					keyColor = "#B0B0B0";
				}

				{
					type = "kernel";
					key = "╰─";
					format = "{1} {2}";
					keyColor = "#B0B0B0";
				}

				"break"

				{
					type = "colors";
				}

				];

			};


		};

	};

		       }
