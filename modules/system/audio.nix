# Audio configuration.
{ ... }:

{
  # Enable PipeWire with ALSA and PulseAudio compatibility.
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

    # Disable the PipeWire bell sound effect.
    extraConfig.pipewire = {
      "99-disable-bell" = {
        "context.properties" = {
          "module.x11.bell" = false;
        };
      };
    };
  };
}
