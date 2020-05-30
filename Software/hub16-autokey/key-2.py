winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    pass
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+<b>") # Build
else:
    keyboard.send_keys("<ctrl>+w")