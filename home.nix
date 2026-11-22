# Home Manager configuration.
{ pkgs, ... }:

{
  home.username = "louis";
  home.homeDirectory = "/home/louis";

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "LED";
        email = "ledwastaken@proton.me";
      };
    };
  };

  xsession.windowManager.i3 = {
    enable = true;

    config = {
      modifier = "Mod4";
      terminal = "alacritty";
      menu = "dmenu_run";

      fonts = {
        names = [ "monospace" ];
        size = 8.0;
      };

      startup = [
        { command = "dex --autostart --environment i3"; notification = false; }
        { command = "xss-lock --transfer-sleep-lock -- i3lock --nofork"; notification = false; }
        { command = "nm-applet"; notification = false; }
      ];

      keybindings = {
        # Terminal and launcher.
        "Mod4+Return" = "exec alacritty";
        "Mod4+d" = "exec --no-startup-id dmenu_run";

        # Kill the focused window.
        "Mod4+Shift+A" = "kill";

        # Change focus.
        "Mod4+j" = "focus left";
        "Mod4+k" = "focus down";
        "Mod4+l" = "focus up";
        "Mod4+m" = "focus right";
        "Mod4+Left" = "focus left";
        "Mod4+Down" = "focus down";
        "Mod4+Up" = "focus up";
        "Mod4+Right" = "focus right";

        # Move the focused window.
        "Mod4+Shift+j" = "move left";
        "Mod4+Shift+k" = "move down";
        "Mod4+Shift+l" = "move up";
        "Mod4+Shift+M" = "move right";
        "Mod4+Shift+Left" = "move left";
        "Mod4+Shift+Down" = "move down";
        "Mod4+Shift+Up" = "move up";
        "Mod4+Shift+Right" = "move right";

        # Splits and fullscreen.
        "Mod4+h" = "split h";
        "Mod4+v" = "split v";
        "Mod4+f" = "fullscreen toggle";

        # Container layouts.
        "Mod4+s" = "layout stacking";
        "Mod4+z" = "layout tabbed";
        "Mod4+e" = "layout toggle split";
        "Mod4+Shift+space" = "floating toggle";
        "Mod4+space" = "focus mode_toggle";
        "Mod4+q" = "focus parent";

        # Switch workspace (AZERTY keys).
        "Mod4+ampersand" = "workspace number 1";
        "Mod4+eacute" = "workspace number 2";
        "Mod4+quotedbl" = "workspace number 3";
        "Mod4+apostrophe" = "workspace number 4";
        "Mod4+parenleft" = "workspace number 5";
        "Mod4+minus" = "workspace number 6";
        "Mod4+egrave" = "workspace number 7";
        "Mod4+underscore" = "workspace number 8";
        "Mod4+ccedilla" = "workspace number 9";
        "Mod4+agrave" = "workspace number 10";

        # Move window to workspace (AZERTY keys, plus number row).
        "Mod4+Shift+1" = "move container to workspace number 1";
        "Mod4+Shift+eacute" = "move container to workspace number 2";
        "Mod4+Shift+3" = "move container to workspace number 3";
        "Mod4+Shift+4" = "move container to workspace number 4";
        "Mod4+Shift+5" = "move container to workspace number 5";
        "Mod4+Shift+6" = "move container to workspace number 6";
        "Mod4+Shift+egrave" = "move container to workspace number 7";
        "Mod4+Shift+8" = "move container to workspace number 8";
        "Mod4+Shift+ccedilla" = "move container to workspace number 9";
        "Mod4+Shift+agrave" = "move container to workspace number 10";

        # Volume controls.
        "XF86AudioRaiseVolume" = "exec --no-startup-id wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec --no-startup-id wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        "XF86AudioMute" = "exec --no-startup-id wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "XF86AudioMicMute" = "exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && killall -SIGUSR1 i3status";

        # Reload, restart and exit.
        "Mod4+Shift+c" = "reload";
        "Mod4+Shift+r" = "restart";
        "Mod4+Shift+e" = "exec \"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'\"";

        # Enter resize mode.
        "Mod4+r" = "mode resize";
      };

      modes = {
        resize = {
          j = "resize shrink width 10 px or 10 ppt";
          k = "resize grow height 10 px or 10 ppt";
          l = "resize shrink height 10 px or 10 ppt";
          m = "resize grow width 10 px or 10 ppt";
          Left = "resize shrink width 10 px or 10 ppt";
          Down = "resize grow height 10 px or 10 ppt";
          Up = "resize shrink height 10 px or 10 ppt";
          Right = "resize grow width 10 px or 10 ppt";
          Return = "mode default";
          Escape = "mode default";
          "Mod4+r" = "mode default";
        };
      };
    };

    extraConfig = ''
      tiling_drag modifier titlebar
      title_align center
    '';
  };

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
