# Time configuration.
{ ... }:

{
  # Set the time zone.
  time.timeZone = "Europe/Paris";

  # Windows expects the RTC in local time; keep it that way so the clock
  # does not jump when dual booting.
  time.hardwareClockInLocalTime = true;
}
