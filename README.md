# Neovim Auto-Create Directory

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Neovim Auto-Create Directory is a Neovim plugin that automatically **creates non-existent directories** when saving files, ensuring a seamless editing experience.

### VIM's default behaviour
<img src="./before-error.png" />

By default, VIM expects the directory to exist, & to fix this error you'll have to do:
```
# Create the directories the opened file is within
:!mkdir -p %:h
```
The plugin handles this behaviour by default implicitly, so you don't need to worry about this.

## Features

- Automatically creates directory structure when saving a file in a non-existent directory.
- Works seamlessly with Neovim's Lua API.
- Lightweight and unobtrusive.

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug) (Neovim/Vim)

Add the following line to your `init.vim`:

```vim
Plug 'pezcoder/auto-create-directory.vim'
```

Then run `:PlugInstall` to install the plugin.

### [dein.vim](https://github.com/Shougo/dein.vim) (Neovim/Vim)

Add the following line to your `init.vim`:

```vim
call dein#add('pezcoder/auto-create-directory.nvim')
```

Then run `:call dein#install()` to install the plugin.

### [packer.nvim](https://github.com/wbthomason/packer.nvim) (Neovim)

Add the following line to your `init.lua`:

```lua
use 'pezcoder/auto-create-directory.nvim'
```

Then run `:PackerInstall` to install the plugin.

### Setup

After installing the plugin, add the following line to your `init.lua` file to call the `.setup()` function:

```lua
require("auto-create-directory").setup()
```

## License

This project is licensed under the [MIT License](LICENSE).
