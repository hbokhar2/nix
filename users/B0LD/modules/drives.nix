{ config, ... }: {
	services.udiskie = {
		enable = true;
		tray = "auto";
	};
}
