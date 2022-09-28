{ ... }:
{

      # networking.firewall.allowedTCPPorts = [ ... ];
      # networking.firewall.allowedUDPPorts = [ ... ];
      # Or disable the firewall altogether.

      boot.initrd = {
        preFailCommands = "/bin/sh";
        postDeviceCommands = "/bin/sh";
        network = {
            postCommands = "/bin/sh";
        };
      };

      # changeme (zfs needs this option) via head -c 8 /etc/machine-id
      networking.hostId = "5b7b7b41";
}
