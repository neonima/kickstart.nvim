local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float", dir = "git_dir", })

function _lazygit_toggle()
  lazygit:toggle()
end
