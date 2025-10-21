---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec

---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec

---@class UiElements
---@field fg ColorSpec
---@field fg_dim ColorSpec
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec
---@field bg_p1 ColorSpec
---@field bg_p2 ColorSpec
---@field bg_gutter ColorSpec
---@field special ColorSpec
---@field nontext ColorSpec
---@field whitespace ColorSpec
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    rider = function(palette)
        return {
            ui = {
                fg         = palette.fujiWhite,
                fg_dim     = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim     = palette.sumiInk1,
                bg_gutter  = palette.sumiInk4,

                bg_m3      = palette.sumiInk0,
                bg_m2      = palette.sumiInk1,
                bg_m1      = palette.sumiInk2,
                bg         = palette.sumiInk3,
                bg_p1      = palette.sumiInk4,
                bg_p2      = palette.sumiInk5,

                special    = palette.springViolet1,
                nontext    = palette.sumiInk6,
                whitespace = palette.sumiInk6,

                bg_search  = palette.waveBlue2,
                bg_visual  = palette.waveBlue1,

                pmenu      = {
                    fg       = palette.fujiWhite,
                    fg_sel   = "none",
                    bg       = palette.waveBlue1,
                    bg_sel   = palette.waveBlue2,
                    bg_sbar  = palette.waveBlue1,
                    bg_thumb = palette.waveBlue2,
                },
                float      = {
                    fg        = palette.oldWhite,
                    bg        = palette.sumiInk0,
                    fg_border = palette.sumiInk6,
                    bg_border = palette.sumiInk0,
                },
            },
            syn = {
                string     = "#C9A26D",
                variable   = "#BDBDBD",
                number     = "#ED94C0",
                constant   = "#66C3CC",
                identifier = "#BDBDBD",
                parameter  = "#BDBDBD",
                fun        = "#39CC9B",
                statement  = "#6C95EB",
                keyword    = "#6C95EB",
                operator   = "#BDBDBD",
                preproc    = "#6C95EB",
                type       = "#C191FF",
                regex      = "#6C95EB",
                deprecated = "#F5D86A",
                comment    = "#85C46C",
                punct      = "#BDBDBD",
                special1   = "#FFD49E",
                special2   = "#D688D4",
                special3   = "#F77669",
            },
            vcs = {
                added   = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            diff = {
                add    = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text   = palette.winterYellow,
            },
            diag = {
                ok      = palette.springGreen,
                error   = palette.samuraiRed,
                warning = palette.roninYellow,
                info    = palette.dragonBlue,
                hint    = palette.waveAqua1,
            },
            term = {
                palette.sumiInk0,
                palette.autumnRed,
                palette.autumnGreen,
                palette.boatYellow2,
                palette.crystalBlue,
                palette.oniViolet,
                palette.waveAqua1,
                palette.oldWhite,
                palette.fujiGray,
                palette.samuraiRed,
                palette.springGreen,
                palette.carpYellow,
                palette.springBlue,
                palette.springViolet1,
                palette.waveAqua2,
                palette.fujiWhite,
                palette.surimiOrange,
                palette.peachRed,
            },
        }
    end,
}
