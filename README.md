# Q-Sys Animation Module

 QSC Q-Sys module to manage an animation using an LED control.
 
[![Luacheck](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml/badge.svg)](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml)

## Quick start

1. Clone or download this repository to the Modules directory
2. Add the module to the project using Design Resources
3. Use the module

## Usage

Add a LED to the UCI and assign it a CSS class which has been styled as an Image Filmstrip. See [UCI Styles](https://q-syshelp.qsc.com/q-sys_9.6/Index.htm#Schematic_Library/uci_styles.htm?Highlight=filmstrip) for examples. Always truncate the value entered inside the style sheet.

```lua
local Animation = require('animation')

local myAnimation = Animation.New(Controls.AnimationLed, 12, 0.01)
myAnimation:Start()
myAnimation:Stop()
```
