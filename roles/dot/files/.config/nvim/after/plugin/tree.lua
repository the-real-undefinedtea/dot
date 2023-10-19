require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'javascript', 'typescript', 'astro', 'svelte', 'vue', 'go', 'rust', 'lua', 'vim' },
  sync_install = false,

  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },

  indent = {
    enable = true
  }
}
