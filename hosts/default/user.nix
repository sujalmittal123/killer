{
  lib,
  config,
  pkgs,
  ...
}: let
  userName = "sujal";
  userDescription = "Sujal Aggrawal";
in {
  options = {
  };
  config = {
    users.users.${userName} = {
      isNormalUser = true;
      description = userDescription;
      shell = pkgs.zsh;
      extraGroups = ["wheel" "docker" "wireshark"];
    };
    programs.zsh.enable = true;
  };
}
