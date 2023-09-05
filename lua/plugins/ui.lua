return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    config = function ()
      vim.cmd[[colorscheme ayu-mirage]]
    end
  },
  { "wfxr/minimap.vim" },
  { "f-person/git-blame.nvim" },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
  },
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = {
        [[ ]],
        [[ ]],
        [[ ]],
        [[                    _______________________________________________________________________________________                    ]],
        [[                   |                                                                                       |                   ]],
        [[                   |                                                                      Mori  ❤️  Jae     |                   ]],
        [[  _________________|_______________________________________________________________________________________|_________________  ]],
        [[ |                                                                                                                           | ]],
        [[ |  ,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----.  | ]],
        [[ | j| Esc |V|  !  |V|  @  |V|  #  |V|  $  |V|  %  |V|  ^  |V|  &  |V|  *  |V|  (  |V|  )  |V|  {  |V|  }  |V|  |  |V|  ~  |i | ]],
        [[ | ||     |||  1  |||  2  |||  3  |||  4  |||  5  |||  6  |||  7  |||  8  |||  9  |||  0  |||  [  |||  ]  |||  \  |||  `  || | ]],
        [[ | |;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:| | ]],
        [[ |  ,---------._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,---------.  | ]],
        [[ | j| Esc     |V|  "  |V|  <  |V|  >  |V|  P  |V|  Y  |V|  F  |V|  G  |V|  C  |V|  R  |V|  L  |V|  ?  |V|  +  |V|   <---  |i | ]],
        [[ | ||         |||  '  |||  ,  |||  .  |||     |||     |||     |||     |||     |||     |||     |||     |||     |||         || | ]],
        [[ | |;---------:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;---------:| | ]],
        [[ |  ,------------._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,--------------.  | ]],
        [[ | j| Caps       |V|  A  |V|  O  |V|  E  |V|  U  |V|  I  |V|  D  |V|  H  |V|  T  |V|  N  |V|  S  |V|  _  |V|    Enter     |i | ]],
        [[ | ||            |||     |||     |||     |||  _  |||     |||     |||  _  |||     |||     |||     |||  -  |||              || | ]],
        [[ | |;------------:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;--------------:| | ]],
        [[ |  ,---------------._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----._,-----------._,-----.  | ]],
        [[ | j| Shift         |V|  :  |V|  Q  |V|  J  |V|  K  |V|  X  |V|  B  |V|  M  |V|  W  |V|  V  |V|  Z  |V| Shift     |V| Fn  |i | ]],
        [[ | ||               |||  ;  |||     |||     |||     |||     |||     |||     |||     |||     |||     |||           |||     || | ]],
        [[ | |;---------------:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----:|;-----------:|;-----:| | ]],
        [[ |              ,-----._,---------._,---------------------------------------------._,---------._,-----.                      | ]],
        [[ |             j| Alt |V| Command |V|   Space                                     |V| Command |V| Alt |i     Dvorak          | ]],
        [[ |             ||     |||         |||                                             |||         |||     ||      Stay           | ]],
        [[ |             |;-----:|;---------:|;---------------------------------------------:|;---------:|;-----:|      Vim            | ]],
        [[ |___________________________________________________________________________________________________________________________| ]],
        [[ ]],
        [[ ]],
        [[ ]],
      }

      dashboard.section.header.val = logo
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
}
