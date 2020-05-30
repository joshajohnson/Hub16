winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+h") # High contrast
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<shift>+<f5>") # Stop
else:
    pass