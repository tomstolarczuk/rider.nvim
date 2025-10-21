# rider.nvim

rider.nvim is a Neovim colorscheme that mirrors JetBrains Rider's dark palette. It installs under the name `rider` so you can enable it like any other colorscheme.

## Origin

This project started as a fork of [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim). The highlight logic and plugin coverage remain the same, but most of palette entries has been reworked to match Rider's UI.

## Installation

Use your preferred plugin manager. For example with lazy.nvim:

```lua
{
    "tomstolarczuk/rider.nvim",
    config = function()
        require("rider").setup()
        vim.cmd("colorscheme rider")
    end,
}
```

## Usage

Once installed, load the colorscheme with either Vimscript or Lua:

```vim
colorscheme rider
```

```lua
vim.cmd("colorscheme rider")
```

## Configuration

`setup()` accepts the same options exposed by the upstream project. Rider.nvim defaults to the Rider palette for every background setting.

```lua
require("rider").setup({
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    transparent = false,
    dimInactive = false,
    terminalColors = true,
    colors = {
        palette = {},
        theme = {
            rider = {},
            all = {},
        },
    },
    overrides = function(colors)
        return {}
    end,
})
```

After calling `setup()` you can reapply the colorscheme:

```lua
vim.cmd("colorscheme rider")
```

### Customizing

Override palette values or per-highlight tweaks via `colors.palette`, `colors.theme.rider`, or `overrides`. You can query the active palette at runtime:

```lua
local colors = require("rider.colors").setup()
local palette = colors.palette
local theme = colors.theme
```

### Compilation

Enable `compile = true` to cache highlights as Lua bytecode. When your configuration changes, run:

```vim
:RiderCompile
```

## License

Rider.nvim inherits the license of its upstream project.
