-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'backdround/global-note.nvim',
    opts = {
      -- Filename to use for default note (preset).
      -- string or fun(): string
      filename = 'global.md',

      -- Directory to keep default note (preset).
      -- string or fun(): string
      directory = vim.fn.stdpath 'data' .. '/global-note/',

      -- Floating window title.
      -- string or fun(): string
      title = 'Global note',

      -- Ex command name.
      -- string
      command_name = 'GlobalNote',

      -- A nvim_open_win config to show float window.
      -- table or fun(): table
      window_config = function()
        local window_height = vim.api.nvim_list_uis()[1].height
        local window_width = vim.api.nvim_list_uis()[1].width
        return {
          relative = 'editor',
          border = 'single',
          title = 'Note',
          title_pos = 'center',
          width = math.floor(0.7 * window_width),
          height = math.floor(0.85 * window_height),
          row = math.floor(0.05 * window_height),
          col = math.floor(0.15 * window_width),
        }
      end,

      -- It's called after the window creation.
      -- fun(buffer_id: number, window_id: number)
      post_open = function(_, _) end,

      -- Whether to use autosave. Autosave saves buffer on closing window
      -- or exiting Neovim.
      -- boolean
      autosave = true,

      -- Additional presets to create other global, project local, file local
      -- and other notes.
      -- { [name]: table } - tables there have the same fields as the current table.
      additional_presets = {},
    }, -- have a global todo note window
  },
  { 'andweeb/presence.nvim' },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    theme = {
      variant = 'light',
    },
  },
}
