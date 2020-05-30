winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+r") # Position relative
elif "eeschema" in winTitle.lower():
    keyboard.send_keys("<ctrl>+y") # Position relative
elif "visual studio code" in winTitle.lower():
    keyboard.send_keys("<f6>") # Pause
else:
    pass