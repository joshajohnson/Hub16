winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+t") # Text
else:
    pass