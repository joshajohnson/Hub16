winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+z") # Copper Pour
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<f10>") # Step Over
else:
    pass