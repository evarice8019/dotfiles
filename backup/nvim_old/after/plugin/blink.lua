require('blink.cmp').setup({
  fuzzy = {
    -- Prefer prebuilt Rust binary; fallback to Lua if unavailable.
    implementation = 'prefer_rust_with_warning',
  },
  sources = {
    default = { 'lsp', 'path', 'buffer' },
  },
  keymap = {
    preset = 'enter'
  },
})
