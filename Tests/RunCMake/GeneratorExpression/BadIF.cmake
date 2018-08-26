# Sniperkit-Bot
# - Status: analyzed


add_custom_target(check ALL COMMAND check
    $<IF:asdf,a,b>
    $<IF:asdf,a>
    )
