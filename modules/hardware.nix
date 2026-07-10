{ config, pkgs, ... }: {

	services.xserver.videoDrivers = [ "nvidia" ];

	hardware = {
		graphics = {
			enable = true;
			enable32Bit = true;
			extraPackages32 = with pkgs.pkgsi686Linux; [
				xorg.libXtst
			];
		};

		nvidia = {
			open = false;
			modesetting.enable = true;
			nvidiaSettings = true;
			powerManagement.enable = false;
		};

		cpu.amd.updateMicrocode = true;
	};

	environment.systemPackages = [
		pkgs.nvtopPackages.nvidia
		pkgs.vulkan-tools
	];

	powerManagement.cpuFreqGovernor = "performance";
}
