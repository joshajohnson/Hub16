winTitle = window.get_active_title()

if "pcbnew" in winTitle.lower():
    # keyboard.send_keys("")
    pass
else:
    system.exec_command("amixer -D pulse sset Master mute")