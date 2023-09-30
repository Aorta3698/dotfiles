require("options")

-- pluging manager 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", opts)

function cpp_compile()
  vim.cmd[[w]]
  -- vim.cmd[[!g++ -Wall -Wextra -Wconversion -static -DONLINE_JUDGE -O2 -std=c++20 "%:p"]]
  vim.cmd[[term bash -c 'g++ -Wall -Wextra -Wconversion -static -DONLINE_JUDGE -O2 -std=c++20 "%:p"']]
end

function cpp_run()
  vim.cmd[[term bash -c ./a.out]]
end

function initT()
  vim.cmd[[r ~/cpp/initT.txt]]
  vim.cmd[[-1d]]
  vim.cmd[[%s/void/void]]
end

function init()
  vim.cmd[[r ~/cpp/init.txt]]
  vim.cmd[[-1d]]
  vim.cmd[[norm G]]
  vim.cmd[[norm k]]
end

function cpp_keymap()
  vim.keymap.set('n', '<F5>', cpp_compile)
  vim.keymap.set('n', '<F4>', cpp_run)
  vim.keymap.set('n', 'gn',   init)
  vim.keymap.set('n', "ga",   initT)
end

vim.keymap.set('n', 'gy', ':%y+<CR>')

-- vim.keymap.set('n', '<F5>', codeforces_compile)
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.cpp"},
  callback = cpp_keymap,
  -- command = "lua vim.keymap.set('n', '<F5>', codeforces_compile)",
})
