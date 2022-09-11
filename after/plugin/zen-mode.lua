local status_ok, zenMode = pcall(require, "zen-mode")
if not status_ok then return end

zenMode.setup {}
