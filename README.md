# Evernight.nvim

A dark colorscheme for Neovim based on OneDark and Everforest, with extensive plugin support.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "sanshibu/evernight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("evernight")
  end,
}
