winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<delete>")
else:
    keyboard.send_keys("<ctrl>+w")