# Sniperkit-Bot
# - Status: analyzed

cmake_policy(SET CMP0053 NEW)

set("semicolon;in;name" semicolon)
set("dollar$in$name" dollar)
set("brace{in}name" brace)
set("bracket[in]name" bracket)
set("newline\nin\nname" newline)
set("octothorpe\#in\#name" octothorpe)
set("splat\@in\@name" splat)
set("caret\^in\^name" caret)
set("paren\(in\)name" paren)
set("dquote\"in\"name" dquote)

message("-->${semicolon\;in\;name}<--")
message("-->${dollar\$in\$name}<--")
message("-->${brace\{in\}name}<--")
message("-->${bracket\[in\]name}<--")
message("-->${newline\nin\nname}<--")
message("-->${octothorpe\#in\#name}<--")
message("-->${splat\@in\@name}<--")
message("-->${caret\^in\^name}<--")
message("-->${paren\(in\)name}<--")
message("-->${dquote\"in\"name}<--")

message(-->top-level;semicolon<--)
message(-->top-level\;escaped\;semicolon<--)
