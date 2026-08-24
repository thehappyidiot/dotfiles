-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- ==========================================================================
-- Tiling: move window/workspace navigation from SUPER to ALT, freeing up
-- SUPER purely for launching apps. (Migrated from the old bindings.conf.)
-- ==========================================================================

-- Focus movement (was: SUPER + arrows)
hl.unbind("SUPER + LEFT")
hl.unbind("SUPER + RIGHT")
hl.unbind("SUPER + UP")
hl.unbind("SUPER + DOWN")
o.bind("ALT + h", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("ALT + l", "Focus on right window", hl.dsp.focus({ direction = "r" }))
o.bind("ALT + k", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("ALT + j", "Focus on below window", hl.dsp.focus({ direction = "d" }))

-- Workspace switching / moving windows silently (was: SUPER + [1-9,0]).
-- Note: the "move window and follow" variant (SUPER + SHIFT) is not
-- replaced, matching the old setup.
for workspace = 1, 10 do
  local key = "code:" .. tostring(workspace + 9)
  hl.unbind("SUPER + " .. key)
  hl.unbind("SUPER + SHIFT + " .. key)
  hl.unbind("SUPER + SHIFT + ALT + " .. key)
  o.bind("ALT + " .. key, "Switch to workspace " .. workspace, hl.dsp.focus({ workspace = tostring(workspace) }))
  o.bind(
    "ALT + SHIFT + " .. key,
    "Move window silently to workspace " .. workspace,
    hl.dsp.window.move({ workspace = tostring(workspace), follow = false })
  )
end

-- Scratchpad shortcuts are disabled (not used).
hl.unbind("SUPER + S")
hl.unbind("SUPER + ALT + S")

-- TAB-based workspace navigation is disabled (not used); keep the new
-- Omarchy defaults for ALT+TAB (window cycling) and CTRL+ALT+TAB (monitor
-- focus) untouched.
hl.unbind("SUPER + TAB")
hl.unbind("SUPER + SHIFT + TAB")
hl.unbind("SUPER + CTRL + TAB")

-- Move workspace to another monitor (was: SUPER + SHIFT + ALT + arrows)
hl.unbind("SUPER + SHIFT + ALT + LEFT")
hl.unbind("SUPER + SHIFT + ALT + RIGHT")
hl.unbind("SUPER + SHIFT + ALT + UP")
hl.unbind("SUPER + SHIFT + ALT + DOWN")
o.bind("ALT + SHIFT + SUPER + h", "Move workspace to left monitor", hl.dsp.workspace.move({ monitor = "l" }))
o.bind("ALT + SHIFT + SUPER + l", "Move workspace to right monitor", hl.dsp.workspace.move({ monitor = "r" }))
o.bind("ALT + SHIFT + SUPER + k", "Move workspace to up monitor", hl.dsp.workspace.move({ monitor = "u" }))
o.bind("ALT + SHIFT + SUPER + j", "Move workspace to down monitor", hl.dsp.workspace.move({ monitor = "d" }))

-- Swap window position (was: SUPER + SHIFT + arrows)
hl.unbind("SUPER + SHIFT + LEFT")
hl.unbind("SUPER + SHIFT + RIGHT")
hl.unbind("SUPER + SHIFT + UP")
hl.unbind("SUPER + SHIFT + DOWN")
o.bind("ALT + SHIFT + h", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("ALT + SHIFT + l", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))
o.bind("ALT + SHIFT + k", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("ALT + SHIFT + j", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

-- Resize active window (was: SUPER + code:20/21, the "-" / "=" keys)
hl.unbind("SUPER + code:20")
hl.unbind("SUPER + code:21")
hl.unbind("SUPER + SHIFT + code:20")
hl.unbind("SUPER + SHIFT + code:21")
o.bind("ALT + code:20", "Expand window left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
o.bind("ALT + code:21", "Shrink window left", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
o.bind("ALT + SHIFT + code:20", "Shrink window up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
o.bind("ALT + SHIFT + code:21", "Expand window down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

-- Scroll through workspaces (was: SUPER + mouse wheel)
hl.unbind("SUPER + mouse_down")
hl.unbind("SUPER + mouse_up")
o.bind("ALT + mouse_down", "Scroll active workspace forward", hl.dsp.focus({ workspace = "e+1" }))
o.bind("ALT + mouse_up", "Scroll active workspace backward", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows by dragging (was: SUPER + LMB/RMB)
hl.unbind("SUPER + mouse:272")
hl.unbind("SUPER + mouse:273")
o.bind("ALT + mouse:272", "Move window", hl.dsp.window.drag(), { mouse = true })
o.bind("ALT + mouse:273", "Resize window", hl.dsp.window.resize(), { mouse = true })

-- Window grouping is disabled (not used); free up SUPER+G and friends.
hl.unbind("SUPER + G")
hl.unbind("SUPER + ALT + G")
hl.unbind("SUPER + ALT + LEFT")
hl.unbind("SUPER + ALT + RIGHT")
hl.unbind("SUPER + ALT + UP")
hl.unbind("SUPER + ALT + DOWN")
hl.unbind("SUPER + ALT + TAB")
hl.unbind("SUPER + ALT + SHIFT + TAB")
hl.unbind("SUPER + CTRL + LEFT")
hl.unbind("SUPER + CTRL + RIGHT")
hl.unbind("SUPER + ALT + mouse_down")
hl.unbind("SUPER + ALT + mouse_up")
for index = 1, 5 do
  hl.unbind("SUPER + ALT + code:" .. tostring(index + 9))
end

-- ==========================================================================
-- Application bindings
-- ==========================================================================

-- Activity monitor (btop) -- not bound by default.
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })

-- Note: SUPER+SHIFT+A is bound to ChatGPT by the new Omarchy default.
-- Overriding it to restore the old T3Chat binding.
hl.unbind("SUPER + SHIFT + A")
o.bind("SUPER + SHIFT + A", "T3Chat", { webapp = "https://t3.chat" })
