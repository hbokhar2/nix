{ config, ...}: {

	fileSystems."/mnt/PerformanceGames" = {
		device = "/dev/disk/by-uuid/7ff61631-4f30-40ae-ba5b-aa67946b0841";
		fsType = "ext4";
		options = [ "nofail" "rw" "noatime" ];
	};

	fileSystems."/mnt/GenericGames" = {
		device = "/dev/disk/by-uuid/0ce745e0-9590-4fdd-9552-f5e43fbb7cd1";
		fsType = "ext4";
		options = [ "nofail" "rw" "noatime" ];
	};

}
