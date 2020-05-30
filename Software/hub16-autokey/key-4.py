winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+r") # Redo
elif "eeschema" in winTitle.lower():
    keyboard.send_keys("<insert>") # Insert
elif "visual studio code" in winTitle.lower():
    keyboard.send_keys("<f5>") # Debug / Continue
else:
    pass