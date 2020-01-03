winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+T") # Text
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<ctrl><shift>+<f5>") # Restart
else:
    pass