--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedarker"
lvim.termguicolors = true
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false
lvim.keys.visual_block_mode["J"] = false
lvim.keys.visual_block_mode["K"] = false

-- vim sets
vim.opt.mouse = ""
vim.opt.list = true
-- vim.opt.colorcolumn = { "100", "120" }

-- -- minimap Config this has been removed
-- vim.g.minimap_width = 10
-- vim.g.minimap_auto_start = 1
-- vim.g.minimap_auto_start_win_enter = 1
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

lvim.builtin.which_key.mappings["w"] = {
  name = "Window",
  j = { "<cmd>split<cr>", "Split Down" },
  l = { "<cmd>vsp<cr>", "Split Right" },
  w = { "<cmd>InteractiveWindow<cr>", "Interactive" },
  p = { "<cmd>BufferLinePick<cr>", "Pick" },
}
-- Use which-ket to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Trouble config
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}

-- vimspector key mappings
lvim.builtin.which_key.mappings['v'] = {
  name = "Vimspector",
  G = { "<cmd>lua require('config.vimspector').generate_debug_profile()<cr>", "Generate Debug Profile" },
  I = { "<cmd>VimspectorInstall<cr>", "Install" },
  U = { "<cmd>VimspectorUpdate<cr>", "Update" },
  R = { "<cmd>call vimspector#RunToCursor()<cr>", "Run to Cursor" },
  c = { "<cmd>call vimspector#Continue()<cr>", "Continue" },
  i = { "<cmd>call vimspector#StepInto()<cr>", "Step Into" },
  o = { "<cmd>call vimspector#StepOver()<cr>", "Step Over" },
  s = { "<cmd>call vimspector#Launch()<cr>", "Start" },
  t = { "<cmd>call vimspector#ToggleBreakpoint()<cr>", "Toggle Breakpoint" },
  u = { "<cmd>call vimspector#StepOut()<cr>", "Step Out" },
  S = { "<cmd>call vimspector#Stop()<cr>", "Stop" },
  r = { "<cmd>call vimspector#Restart()<cr>", "Restart" },
  x = { "<cmd>VimspectorReset<cr>", "Exit" },
  H = { "<cmd>lua require('config.vimspector').toggle_human_mode()<cr>", "Toggle HUMAN mode" },
}

-- indent blankline config
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- require("indent_blankline").setup {
--   space_char_blankline = " ",
--   char_highlight_list = {
--     "IndentBlanklineIndent1",
--     "IndentBlanklineIndent2",
--     "IndentBlanklineIndent3",
--     "IndentBlanklineIndent4",
--     "IndentBlanklineIndent5",
--     "IndentBlanklineIndent6",
--   },
--   -- show_current_context = true,
--   -- show_current_context_start = true,
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- set current directory to directory currently in. Prevents lunarvim from setting to the root of the project
local nvimtree = lvim.builtin.nvimtree
nvimtree.setup.update_focused_file.update_cwd = false
local project = lvim.builtin.project
project.manual_mode = true


-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
local opts = {
  autostart = true
} -- check the lspconfig documentation for a list of all possible options
require("lvim.lsp.manager").setup("pyright", opts)
require("lvim.lsp.manager").setup("jsonls", {
  autostart = true,
})
-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    args = { "--print-width", "100" },
    filetypes = { "json" },
  },
  {
    command = "black",
    args = { "--line-width", "100" },
    filetype = { "python" },
  }
  -- {
  --   exe = "clang-format",
  --   args = {}
  -- }
}
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- local Terminal = require('toggleterm.terminal').Terminal
-- local lazygit = Terminal.new({ cmd = "lazygit", hidden = true })

-- function _lazygit_toggle()
--   lazygit:toggle()
-- end

-- vim.api.nvim_set_keymap('n', 'F8', '<cmd> lua _lazygit_toggle()<CR>', { noremap = true, silent = true })

lvim.builtin.terminal.direction = "horizontal"

-- lvim.builtin.terminal.config = function ()
--
-- end

print(require('lualine').get_config())
lvim.builtin.lualine.options.theme = "auto"
lvim.builtin.lualine.options.icons_enabled = true
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_y = { "progress" }
lvim.builtin.lualine.sections.lualine_z = { "location" }

-- require('lualine').setup {
--   options = {
--     theme = "auto",
--     icons_enabled = true,
--   },
--   sections = {
--     lualine_a = { "mode" },
--     lualine_y = { 'progress' },
--     lualine_z = { 'location' }
--   }
-- }

-- Additional Plugins
lvim.plugins = {
  -- {"folke/tokyonight.nvim"},
  {
    "folke/trouble.nvim"
  },
  -- {
  --   "wfxr/minimap.vim",
  --   run = "cargo install --locked code-minimap",
  --   -- cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
  --   -- config = function()
  --   --   -- vim.cmd("let g:minimap_width = 10")
  --   --   -- vim.cmd("let g:minimap_auto_start = 1")
  --   --   -- vim.cmd("let g:minimap_auto_start_win_enter = 1")
  --   -- end,
  -- },
  {
    "npxbr/glow.nvim",
    ft = { "markdown" }
  },
  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  },
  {
    "jeffkreeftmeijer/vim-numbertoggle",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    setup = {
      enable = true,
      max_lines = 0,
    }
  },
  {
    'alexghergh/nvim-tmux-navigation', config = function()
      require 'nvim-tmux-navigation'.setup {
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
          left = "<C-h>",
          down = "<C-j>",
          up = "<C-k>",
          right = "<C-l>",
          last_active = "<C-\\>",
          next = "<C-Space>",
        }
      }
    end
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    -- run = "go install github.com/jesseduffield/lazygit@latest"
    -- config = function()
    --   vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
    -- end
  },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        names    = true, -- "Name" codes, see https://www.w3schools.com/colors/colors_hex.asp   Blue, HotPink, OldLace, Plum, LightGreen, Coral
        RGB      = true, -- #RGB hex codes                                                      #f0f #FAB
        RRGGBB   = true, -- #RRGGBB hex codes                                                   #ffff00 #FF00FF
        RRGGBBAA = true, -- #RRGGBBAA hex codes                                                 #ffff00ff #AbCdEf
        rgb_fn   = true, -- CSS rgb() and rgba() functions                                      rgb(100,200,50) rgba(255,255,255,1.0) rgb(100%, 0%, 0%)
        hsl_fn   = true, -- CSS hsl() and hsla() functions                                      hsl(120,100%,50%) hsla(20,100%,40%,0.7)
        css      = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn   = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        mode     = 'background'; -- Set the display mode.
      })
    end,
  },
  -- {
  --   "ziontee113/color-picker.nvim",
  --   config = function()
  --     vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>PickColor<cr>", { noremap = true, silent = true })
  --     vim.api.nvim_set_keymap("i", "<C-c>", "<cmd>PickColorInsert<cr>", { noremap = true, silent = true })
  --   end
  -- },
  {
    "puremourning/vimspector",
    cmd = { "VimspectorInstall", "VimspectorUpdate" },
    fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
    config = function()
      require("config.vimspector").setup()
    end,
  },
}


-- vim.cmd('source ~/dotfiles/lunarvim/user.vim')
-- vim.cmd('source ~/dotfiles/lvim/lua/user/lualine.lua')
vim.cmd('source ~/.config/lvim/user.vim')
vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
