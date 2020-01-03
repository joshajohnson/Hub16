winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+v") # Via
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<f5>") # Debug / Continue
else:
    pass