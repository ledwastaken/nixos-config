# Home Manager configuration.
{ pkgs, ... }:

{
  home.username = "louis";
  home.homeDirectory = "/home/louis";

  programs.alacritty = {
     enable = true;
     theme = "gruvbox_dark";
     settings = {
       window = {
         opacity = 0.8;
         padding = {
           x = 2;
           y = 2;
         };
       };
       font = {
         normal = {
           family = "JetBrainsMono Nerd Font";
           style = "Regular";
         };
         size = 6.0;
       };
     };
  };

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

  services.picom.enable = true;

  services.polybar = {
    enable = true;
    script = "";
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
