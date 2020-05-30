winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("\\") # Decrease Via Size
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("<f10>") # Step Over
else:
    pass