return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "folke/which-key.nvim",
    "nvim-telescope/telescope.nvim",
	"ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
	"echasnovski/mini.pick", -- optional [for picker="mini-pick"]
	"nvim-tree/nvim-web-devicons", -- optional [for devicons in telescope, fzf or mini.pick]
  },
  opts = {
    cscope = {
      picker = "telescope",
      db_file = "./cscope.out",
      exec = "cscope",
    },
    -- disable_maps = true, -- Disable default maps to set custom keymap
  },
  config = function(_, opts)
    require("cscope_maps").setup(opts)

    -- Custom keymap for finding global definition

    -- Command to build cscope database
    vim.api.nvim_create_user_command("CscopeBuild", function()
      vim.fn.system("find . -name '*.c' -o -name '*.cpp' -o -name '*.h' -o -name '*.hpp' > cscope.files")
      vim.fn.system("cscope -b -q")
      print("Cscope database built successfully")
    end, {})
  end,
}