winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("e") # For edit
elif "eeschema" in winTitle.lower():
    keyboard.send_keys("e") # For edit
else:
    pass