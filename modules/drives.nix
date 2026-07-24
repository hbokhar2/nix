{ config, ...}: {

	fileSystems."/mnt/PerformanceGames" = {
		device = "/dev/disk/by-uuid/7ff61631-4f30-40ae-ba5b-aa67946b0841";
		fsType = "ext4";
		options = [ "nofail" "rw" "noatime" ];
	};

	fileSystems."/mnt/GenericGames" = {
		device = "/dev/disk/by-uuid/89883716-f4f8-45c5-b6fc-f0a1b8dc324d";
		fsType = "ext4";
		options = [ "nofail" "rw" "noatime" ];
	};

}
