winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<shift>+n") # Previous grid size
else:
    system.exec_command("playerctl previous")