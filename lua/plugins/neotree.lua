return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd([[
              setlocal relativenumber
            ]])
          local events = require("neo-tree.events")
          events.fire_event(events.GIT_EVENT)
        end,
      },
    },
  },
}
