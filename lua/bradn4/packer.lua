-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Using Packer
  use 'navarasu/onedark.nvim'

 use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('nvim-treesitter/playground')
 use('theprimeagen/harpoon')
 use {
	 'VonHeikemen/lsp-zero.nvim',
	 branch = 'v3.x',
	 requires = {
		 --- Uncomment the two plugins below if you want to manage the language servers from neovim
		 -- {'williamboman/mason.nvim'},
		 -- {'williamboman/mason-lspconfig.nvim'},

		 {'neovim/nvim-lspconfig'},
		 {'hrsh7th/nvim-cmp'},
		 {'hrsh7th/cmp-nvim-lsp'},
		 {'L3MON4D3/LuaSnip'},
	 }
 }
 use('j-hui/fidget.nvim')
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use('sakhnik/nvim-gdb')
use ('m4xshen/autoclose.nvim')
use ('HiPhish/rainbow-delimiters.nvim')
use {clangd = function()
      require('lspconfig').clangd.setup({
        capabilities = {
          offsetEncoding = 'utf-8',
        },
      })
  end,
  'nvim-tree/nvim-tree.lua',
}
use('nvim-tree/nvim-web-devicons') -- optional
--use('ycm-core/YouCompleteMe')
use{
  'Zeioth/compiler.nvim',
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  requires = { "stevearc/overseer.nvim" },
  config = function ()
    require('compiler').setup()
  end
  }
use{ -- The task runner we use
  "stevearc/overseer.nvim",
  --commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
  --cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  --opts = {
    --task_list = {
    --  direction = "bottom",
    --  min_height = 25,
    --  max_height = 25,
    --  default_detail = 1
    --},
  --},
  --after = 'compiler',

}
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'
-- compiler and debugging
use 'mfussenegger/nvim-dap'
use 'nvim-neotest/nvim-nio'
use({'jay-babu/mason-nvim-dap.nvim',
  requires = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
  },
  opts = {
      handlers = {},
  }
})
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

end)
