-- Workspace rules.
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/

hl.workspace_rule({ workspace = "10", default = true, persistent = true, default_name = "0: Reference" })
hl.workspace_rule({ workspace = "1", monitor = "DP-3", persistent = true, default_name = "1: 🌐" })
hl.workspace_rule({ workspace = "2", monitor = "DP-3", persistent = true, default_name = "2: 👨‍💻" })
hl.workspace_rule({ workspace = "3", monitor = "DP-3", default = true, persistent = true, default_name = "3: Develop" })
hl.workspace_rule({ workspace = "4", monitor = "DP-3", persistent = true, default_name = "4: API" })
hl.workspace_rule({ workspace = "5", monitor = "DP-3", persistent = true, default_name = "5: 📁" })
hl.workspace_rule({ workspace = "6", monitor = "DP-3", persistent = false })
hl.workspace_rule({ workspace = "7", monitor = "DP-3", persistent = false, default_name = "7: 📅" })
hl.workspace_rule({ workspace = "8", monitor = "DP-3", persistent = true, default_name = "8: 🎧" })
hl.workspace_rule({ workspace = "9", monitor = "DP-3", persistent = true, default_name = "9: 💬" })

-- Window -> workspace assignments.
o.window({ class = "^(Firefox|Brave-browser|chromium|chrome-t3\\.chat__-Default)$" }, { workspace = "1" })
o.window({ class = "^(Alacritty|Gnome-terminal|kitty|foot)$" }, { workspace = "2" })
o.window({ class = "^(code-oss)$" }, { workspace = "3" })
o.window({ class = "^(Hoppscotch-desktop)$" }, { workspace = "4" })
o.window({ class = "^(Nautilus|Thunar|pcmanfm)$" }, { workspace = "5" })
o.window({ class = "(chrome-app.hey.com__calendar.*)" }, { workspace = "6" })
o.window({ class = "^(Spotify)$", title = "^(Spotify.*)$" }, { workspace = "7" })
o.window({ class = "^(chrome-web\\.whatsapp\\.com__-Default)$", title = "^(web\\.whatsapp\\.com.*)$" }, { workspace = "8" })
o.window({ class = "^(chrome-app.hey.com__-Default)$", title = "^(app\\.hey\\.com.*)$" }, { workspace = "9" })
