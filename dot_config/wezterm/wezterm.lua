-- https://zenn.dev/mozumasu/articles/mozumasu-wezterm-customization
-- 

-- ~/.wezterm.lua あるいは ~/.config/wezterm/wezterm.lua
local wezterm = require("wezterm")
local act = wezterm.action

-- config_builder を使うと補完/検証が効く
local config = wezterm.config_builder()


-- 起動時のサイズ（セル数）
config.initial_cols = 120
config.initial_rows = 48


config.font = wezterm.font("HackGen", { weight = "Regular" })
config.font_size = 14.0
config.use_ime = true

-- 横方向のセル幅倍率（既定: 1.0）
-- 1.02~1.06 くらいで「わずかに字間を広げる」効果
config.cell_width = 1.02

-- 縦方向の行間倍率（既定: 1.0）
-- 1.05~1.15 くらいで読みやすさを上げやすい
config.line_height = 1.04


-- Windows の IME を快適に
config.use_ime = true

config.automatically_reload_config = true


config.colors = {
  -- 背景
  background = "#141425",
  -- 文字色（任意）
  foreground = "#ffffff",

  -- 参考：カーソルの枠線色（点滅ブロックの外枠など）
  cursor_border = "#cdd6f4",
}

-- 透過
config.window_background_opacity = 0.90
config.macos_window_background_blur = 20



----------------------------------------------------
-- Tab
----------------------------------------------------
-- タイトルバーを非表示
config.window_decorations = "RESIZE"
-- タブバーの表示
config.show_tabs_in_tab_bar = true
-- タブが一つの時は非表示
-- config.hide_tab_bar_if_only_one_tab = true
-- falseにするとタブバーの透過が効かなくなる
-- config.use_fancy_tab_bar = false

return config