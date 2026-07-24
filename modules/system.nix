{ config, pkgs, ... }: {

	boot = {
		loader = {
			grub = {
				enable = true;
				efiSupport = true;
				efiInstallAsRemovable = true;
				device = "nodev";
				useOSProber = true;
			};
			efi.efiSysMountPoint = "/boot";
		};

		supportedFilesystems = [ "ntfs" ];
		kernelPackages = pkgs.linuxPackages_latest;
	};

	networking = {
		hostName = "Kaguya";
		networkmanager.enable = true;
	};

	time.timeZone = "America/Phoenix";

	programs.zsh.enable = true;

	services = {
		printing.enable = true;
		udisks2.enable = true;

		pipewire = {
			enable = true;
			pulse.enable = true;
			# alsa.enable = true;
			# jack.enable = true;
		};
	};

	environment.systemPackages = with pkgs; [
		hyprpolkitagent
	];

	users.defaultUserShell = pkgs.zsh;

	users.users.B0LD = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" ];
		packages = [ ];
	};
}
