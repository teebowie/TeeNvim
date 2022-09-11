local opt = vim.opt

local function has(x)
  return vim.fn.has(x)
end
if has(macunix) == 1 then
  opt.clipboard:append { 'unnamedplus' }
elseif has(win32) == 1 then
  opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
else
  opt.clipboard:append { 'unnamedplus' }
end  
