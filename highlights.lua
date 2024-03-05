local M = {}

---@type Base46HLGroupsList
M.override = {

  ["@comment"] = {
    italic = true,
  },
  -- imports
  Include = {
    italic = true,
  },
  -- for, while loops
  Repeat = {
    italic = true,
  },
  -- if statements
  Conditional = {
    italic = true,
  },
  -- class, with, as keywords
  ["@keyword"] = {
    italic = true,
  },
  -- function keyword
  ["@keyword.function"] = {
    italic = true,
  },
  -- return, yield keywords
  ["@keyword.return"] = {
    bold = true,
  },
  -- function names
  ["@function"] = {
    italic = false,
  },
  -- symbolic
  ["@operator"] = {
    bold = true,
  },
  -- logical keywords 
  ["@keyword.operator"] = {
    italic = true,
  },
    -- function parameters
  ["@parameter"] = {
    italic = true,
  },
}

return M
