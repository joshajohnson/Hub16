winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    keyboard.send_keys("<shift>+w") # Previous track width
else:
    system.exec_command("amixer -D pulse sset Master unmute 5%-")