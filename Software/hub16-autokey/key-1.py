winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    pass
else:
    keyboard.send_key('<escape>')
    
