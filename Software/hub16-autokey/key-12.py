winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<ctrl>+M") # Move item exactly
if "visual studio code" in winTitle.lower():
    keyboard.send_keys("miniterm --echo<enter>") # init sig gen
    time.sleep(0.5)
    keyboard.send_keys("2<enter>")
else:
    pass