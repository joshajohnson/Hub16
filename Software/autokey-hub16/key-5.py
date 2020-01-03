winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+<shift>+z") # Copper Pour
else:
    pass