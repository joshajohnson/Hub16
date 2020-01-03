winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+m") # Measure
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<alt>+<shift>+1") # Build and Flash
else:
    pass