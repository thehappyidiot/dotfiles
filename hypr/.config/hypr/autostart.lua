-- Extra autostart processes.
-- o.launch_on_start("my-service")

o.launch_on_start("code")
o.launch_on_start("chromium")
o.launch_on_start("alacritty")
o.launch_on_start("spotify")
o.exec_on_start(o.launch_webapp("https://app.hey.com"))
