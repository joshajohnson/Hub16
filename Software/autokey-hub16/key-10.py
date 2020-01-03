winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+h") # Dimension
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<shift>+<f5>") # Stop
else:
    pass