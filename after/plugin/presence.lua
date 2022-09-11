local status_ok, discordrp = pcall(require, 'presence')
if not status_ok then return end

discordrp:setup(
  {
    auto_update = true,

  }
)
