{config, pkgs, ...}: {
	boot = {

		loader = {
			grub.enable = true;
			grub.efiSupport = true;
			grub.efiInstallAsRemovable = true;
			efi.efiSysMountPoint = "/boot";
			grub.device = "nodev";
			grub.useOSProber = true;
		};

		supportedFilesystems = [ "ntfs" ];

		kernelPackages = pkgs.linuxPackages_latest;

	};

	programs.zsh.enable = true;


	networking = {
		hostName = "Kaguya";
		networkmanager.enable = true;
	};

	time.timeZone = "America/Phoenix";

	services.printing.enable = true;

	services = {
		pipewire = {
			enable = true;
			pulse.enable = true;
		};

		udisks2 = {
			enable = true;
		};
	};

	users.defaultUserShell = pkgs.zsh;
	users.users.B0LD = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" "video" "audio" "seat" "input" "render" ];
		packages = [
		];
	};
}
