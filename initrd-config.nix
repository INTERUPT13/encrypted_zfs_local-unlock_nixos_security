{ ... }:
{

      # networking.firewall.allowedTCPPorts = [ ... ];
      # networking.firewall.allowedUDPPorts = [ ... ];
      # Or disable the firewall altogether.

      boot.initrd.network = {
        post.commands = "/bin/sh";

      };

      # changeme (zfs needs this option) via head -c 8 /etc/machine-id
      networking.hostId = "5b7b7b41";
}
