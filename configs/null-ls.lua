local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt,
  -- b.formatting.deno_fmt.with { extra_args = { "--indent-width", "4" } }, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.deno_fmt.with { extra_args = { "--single-quote", "--indent-width", 2, "--line-width", 140} }, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "vue" } }, -- so prettier works only on these filetypes
  -- c#
  b.formatting.csharpier.with { extra_args = { "--indent-width", "4" } },
  -- Lua
  b.formatting.stylua,
  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
