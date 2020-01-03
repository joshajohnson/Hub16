winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("n") # Next grid size
else:
    system.exec_command("playerctl next")