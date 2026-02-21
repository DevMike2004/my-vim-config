local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

ls.add_snippets("cpp", {
  s("cout", fmta(
    [[cout <<<< "<>" <<<< endl;]],
    {
      i(1, "message"),
    }
  )),
})

