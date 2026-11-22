local M = {}

local c = {
  bg = "#0f0f0f",
  bg_dark = "#0c0c0c",
  bg_alt = "#191919",
  bg_highlight = "#262626",
  fg = "#f0f0f0",
  fg_alt = "#e7e7e7",

  gray02 = "#191919",
  gray03 = "#262626",
  gray04 = "#4c4c4c",
  gray05 = "#767676",
  gray06 = "#acacac",

  red = "#ac8a8c",
  green = "#8aac8b",
  yellow = "#aca98a",
  blue = "#8f8aac",
  magenta = "#ac8aac",
  cyan = "#8aabac",
  orange = "#c6a679",

  bright_red = "#c49ea0",
  bright_green = "#9ec49f",
  bright_yellow = "#c4c19e",
  bright_blue = "#a39ec4",
  bright_magenta = "#c49ec4",
  bright_cyan = "#9ec3c4",

  none = "NONE",
}

local function hi(name, val)
  vim.api.nvim_set_hl(0, name, val)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "mountainv2"

  -- Terminal colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg_alt
  vim.g.terminal_color_8 = c.gray04
  vim.g.terminal_color_9 = c.bright_red
  vim.g.terminal_color_10 = c.bright_green
  vim.g.terminal_color_11 = c.bright_yellow
  vim.g.terminal_color_12 = c.bright_blue
  vim.g.terminal_color_13 = c.bright_magenta
  vim.g.terminal_color_14 = c.bright_cyan
  vim.g.terminal_color_15 = c.fg

  local hl = {
    -- Editor
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_alt },
    FloatBorder = { fg = c.gray04, bg = c.bg_alt },
    FloatTitle = { fg = c.cyan, bg = c.bg_alt, bold = true },
    ColorColumn = { bg = "#44475a" }, -- Oni tweak
    Conceal = { fg = c.gray04 },
    Cursor = { fg = c.bg, bg = c.fg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorColumn = { bg = c.bg_alt },
    CursorLine = { bg = c.bg_alt },
    CursorLineNr = { fg = c.orange, bold = true },
    LineNr = { fg = c.gray04 },
    Directory = { fg = c.blue },
    DiffAdd = { fg = c.green, bg = c.bg_alt },
    DiffChange = { fg = c.yellow, bg = c.bg_alt },
    DiffDelete = { fg = c.red, bg = c.bg_alt },
    DiffText = { fg = c.cyan, bg = c.gray03 },
    EndOfBuffer = { fg = c.bg },
    ErrorMsg = { fg = c.red },
    VertSplit = { fg = c.gray03, bg = c.bg },
    WinSeparator = { fg = c.gray03, bg = c.bg },
    Folded = { fg = c.gray05, bg = c.bg_alt },
    FoldColumn = { fg = c.gray05, bg = c.bg },
    SignColumn = { fg = c.gray05, bg = c.bg },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { fg = c.bg, bg = c.orange },
    Substitute = { fg = c.bg, bg = c.yellow },
    MatchParen = { fg = c.orange, bg = c.gray03, bold = true },
    ModeMsg = { fg = c.fg, bold = true },
    MoreMsg = { fg = c.green },
    NonText = { fg = c.gray04 },
    Pmenu = { fg = c.fg, bg = c.bg_alt },
    PmenuSel = { fg = c.bg, bg = c.blue },
    PmenuSbar = { bg = c.gray03 },
    PmenuThumb = { bg = c.gray05 },
    Question = { fg = c.cyan },
    QuickFixLine = { bg = c.gray03, bold = true },
    Search = { fg = c.bg, bg = c.yellow },
    SpecialKey = { fg = c.gray04 },
    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.cyan, undercurl = true },
    SpellRare = { sp = c.magenta, undercurl = true },
    StatusLine = { fg = c.fg, bg = c.gray03 },
    StatusLineNC = { fg = c.gray05, bg = c.bg_alt },
    TabLine = { fg = c.gray05, bg = c.bg_alt },
    TabLineFill = { bg = c.bg_alt },
    TabLineSel = { fg = c.fg, bg = c.gray03, bold = true },
    Title = { fg = c.blue, bold = true },
    Visual = { bg = c.gray03 },
    VisualNOS = { bg = c.gray03 },
    WarningMsg = { fg = c.yellow },
    Whitespace = { fg = c.gray03 },
    WildMenu = { fg = c.bg, bg = c.blue },
    WinBar = { fg = c.fg, bg = c.bg },
    WinBarNC = { fg = c.gray05, bg = c.bg },

    -- Syntax (mellow-like semantics, Mountain palette, no italics)
    Comment = { fg = c.gray05 },
    Constant = { fg = c.cyan },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.magenta },
    Boolean = { fg = c.yellow },
    Float = { fg = c.magenta },
    Identifier = { fg = c.red },
    Function = { fg = c.blue },
    Statement = { fg = c.magenta },
    Conditional = { fg = c.magenta },
    Repeat = { fg = c.magenta },
    Label = { fg = c.magenta },
    Operator = { fg = c.yellow },
    Keyword = { fg = c.blue },
    Exception = { fg = c.blue },
    PreProc = { fg = c.magenta }, -- #include etc. (pink/magenta like mellow)
    Include = { fg = c.magenta },
    Define = { fg = c.magenta },
    Macro = { fg = c.magenta },
    PreCondit = { fg = c.magenta },
    Type = { fg = c.bright_blue },
    StorageClass = { fg = c.yellow },
    Structure = { fg = c.yellow },
    Typedef = { fg = c.yellow },
    Special = { fg = c.cyan },
    SpecialChar = { fg = c.yellow },
    Tag = { fg = c.cyan },
    Delimiter = { fg = c.gray06 },
    SpecialComment = { fg = c.gray05 },
    Debug = { fg = c.red },
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = {},
    Error = { fg = c.red },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -- Diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.cyan },
    DiagnosticHint = { fg = c.blue },
    DiagnosticOk = { fg = c.green },
    DiagnosticUnderlineError = { sp = c.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.cyan, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.blue, undercurl = true },
    DiagnosticVirtualTextError = { fg = c.red, bg = c.bg_alt },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.bg_alt },
    DiagnosticVirtualTextInfo = { fg = c.cyan, bg = c.bg_alt },
    DiagnosticVirtualTextHint = { fg = c.blue, bg = c.bg_alt },

    -- LSP / references
    LspReferenceText = { bg = c.gray03 },
    LspReferenceRead = { bg = c.gray03 },
    LspReferenceWrite = { bg = c.gray03 },
    LspSignatureActiveParameter = { fg = c.orange, bold = true },
    LspInlayHint = { fg = c.gray04, bg = c.bg_alt },

    -- Treesitter (mellow-like roles, Mountain palette, no italics)
    ["@comment"] = { link = "Comment" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.magenta },
    ["@constant.macro"] = { link = "Define" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = c.magenta },
    ["@string.regex"] = { fg = c.bright_magenta },
    ["@string.special"] = { fg = c.cyan },
    ["@character"] = { link = "Character" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@boolean"] = { link = "Boolean" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.cyan },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { fg = c.blue },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { fg = c.blue },
    ["@constructor"] = { fg = c.magenta },
    ["@parameter"] = { fg = c.red },
    ["@variable.parameter"] = { fg = c.red },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = c.blue },
    ["@keyword.operator"] = { fg = c.blue },
    ["@keyword.return"] = { fg = c.magenta },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@label"] = { link = "Label" },
    ["@operator"] = { link = "Operator" },
    ["@exception"] = { link = "Exception" },
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.cyan },
    ["@variable.member"] = { fg = c.red },
    ["@property"] = { fg = c.red },
    ["@field"] = { fg = c.red },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.cyan },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { fg = c.blue },
    ["@storageclass"] = { link = "StorageClass" },
    ["@structure"] = { link = "Structure" },
    ["@namespace"] = { fg = c.cyan },
    ["@module"] = { fg = c.cyan },
    ["@include"] = { link = "Include" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@macro"] = { link = "Macro" },
    ["@punctuation"] = { fg = c.gray06 },
    ["@punctuation.delimiter"] = { fg = c.gray06 },
    ["@punctuation.bracket"] = { fg = c.gray06 },
    ["@punctuation.special"] = { fg = c.magenta },
    ["@tag"] = { fg = c.cyan },
    ["@tag.attribute"] = { fg = c.blue },
    ["@tag.delimiter"] = { fg = c.gray06 },
    ["@text"] = { fg = c.fg },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = {},
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { fg = c.green },
    ["@text.uri"] = { fg = c.cyan, underline = true },
    ["@text.todo"] = { link = "Todo" },
    ["@markup.heading"] = { fg = c.blue, bold = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = {},
    ["@markup.link"] = { fg = c.cyan },
    ["@markup.link.url"] = { fg = c.cyan, underline = true },
    ["@markup.raw"] = { fg = c.green },
    ["@markup.list"] = { fg = c.magenta },

    -- LSP semantic tokens
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.variable"] = {},
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.number"] = { link = "@number" },

    -- Git signs / diff
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.yellow },
    diffFile = { fg = c.cyan },
    diffLine = { fg = c.gray05 },

    -- Snacks Picker (fix invisible dirs/paths)
    SnacksPicker = { fg = c.fg, bg = c.bg },
    SnacksPickerBorder = { fg = c.gray04, bg = c.bg },
    SnacksPickerTitle = { fg = c.cyan, bg = c.bg, bold = true },
    SnacksPickerPrompt = { fg = c.magenta },
    SnacksPickerMatch = { fg = c.orange, bold = true },
    SnacksPickerDir = { fg = c.gray05 },
    SnacksPickerDirectory = { fg = c.blue },
    SnacksPickerFile = { fg = c.fg },
    SnacksPickerPathHidden = { fg = c.gray04 },
    SnacksPickerPathIgnored = { fg = c.gray04 },
    SnacksPickerDimmed = { fg = c.gray05 },
    SnacksPickerCol = { fg = c.gray05 },
    SnacksPickerRow = { fg = c.gray05 },
    SnacksPickerDelim = { fg = c.gray04 },
    SnacksPickerGitStatus = { fg = c.yellow },
    SnacksPickerGitStatusAdded = { fg = c.green },
    SnacksPickerGitStatusModified = { fg = c.yellow },
    SnacksPickerGitStatusDeleted = { fg = c.red },
    SnacksPickerGitStatusUntracked = { fg = c.gray05 },
    SnacksPickerGitStatusIgnored = { fg = c.gray04 },

    -- Oni/plugin overrides (from his config), no italics
    CocWarningSign = { fg = "#ffb86c" },
    CocErrorSign = { fg = "#ff5555" },
  }

  for name, val in pairs(hl) do
    hi(name, val)
  end
end

return M
