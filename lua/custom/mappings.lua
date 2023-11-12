local M = {}
--
M.lspsaga = {
  plugin = true,
  n = {
    ["<leader>sld"] = {
      "<cmd>Lspsaga show_line_diagnostics<cr>",
      "show line diagnostics",
      opts = {
        silent = true,
        noremap = true
      }
    },
    ["<A-p>"]={
      "<cmd>Lspsaga peek_type_definition<cr>",
      "peek type definition",
      opts = {
        silent = true,
        noremap = true
      }
    }
  }
}
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}
M.copilot = {
  plugin =true,
  n = {
    ["<A-x>"] = {
      "<cmd>Copilot disable<cr>",
      "Disable Copilot"
    }
  }
}
M.zenmode = {
  plugin = true,
  n = {
    ["<A-z>"] = {
      "<cmd>ZenMode<cr>",
      "Zen Mode"
    }
  }
} 

return M
