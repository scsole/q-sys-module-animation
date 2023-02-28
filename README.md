# Q-Sys Animation Module

Q-Sys module to create an animation using a knob control.

[![Luacheck](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml/badge.svg)](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml)

## Quick start

1. Clone or download this repository to the Modules directory
2. Add the module to the project using Design Resources
3. Use the module

## Usage

Add a knob to the UCI and assign it a CSS class which has been styled as an Image Filmstrip. See [UCI
Styles](https://q-syshelp.qsc.com/q-sys_9.6/Index.htm#Schematic_Library/uci_styles.htm?Highlight=filmstrip) for
examples. Change the units to `Integer` and adjust the Min and Max values. For example, and animation with 10 frames
would use the values `0` and `9` respectively. The CSS file should use integers as the values and not positions.

```lua
local Animation = require('animation')

local myAnimation = Animation:New(Controls.AnimationLed, 12, 0.1)
myAnimation:Start()
myAnimation:Stop()
myAnimation:Step()
```
