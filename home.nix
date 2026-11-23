# Home Manager configuration.
{ pkgs, ... }:

{
  home.username = "louis";
  home.homeDirectory = "/home/louis";

  programs.feh.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "LED";
        email = "ledwastaken@proton.me";
      };
    };
  };

  xsession.windowManager.i3.enable = true;

  home.file.".config/i3/config".source = ./i3/config;

  home.packages = with pkgs; [
    discord
    vscodium
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";
}
