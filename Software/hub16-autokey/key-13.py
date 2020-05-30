winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    pass
else:
    system.exec_command("gnome-screenshot -i")