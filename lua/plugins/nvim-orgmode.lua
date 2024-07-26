return {
  'nvim-orgmode/orgmode',

  config = function()

    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org'
    })

    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = {'*.org'},
      group = group,
      command = 'setlocal nowrap'
    })
  end
}
