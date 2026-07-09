{ config, pkgs, ... }: {

	environment.sessionVariables = {

		LIBVA_DRIVER_NAME = "nvidia";
		"__GLX_VENDOR_LIBRARY_NAME" = "nvidia";
		NVD_BACKEND = "direct";
		NIXOS_OZONE_WL = "1";
		QT_QPA_PLATFORM = "wayland;xcb";
		MOZ_ENABLE_WAYLAND = "1";
		WLR_NO_HARDWARE_CURSORS = "1";

	};

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
