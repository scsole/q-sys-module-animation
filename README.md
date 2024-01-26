# Q-Sys Animation Module

Q-Sys module to create an animation using a state trigger control.

[![Luacheck](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml/badge.svg)](https://github.com/scsole/q-sys-module-animation/actions/workflows/luacheck.yml)

## Quick start

1. Clone or download this repository to the Modules directory
2. Add the module to the project using Design Resources
3. Use the module

## Usage

Add a state trigger to the UCI and assign it a CSS class which has been styled with different images for each value.
Adjust the `Min` and `Max` properties to `0` and `total frames - 1` respectively. For example, an animation with 10
frames would use the properties `Min=0` and `Max=9`.

> **Note**: the same effect can be produced with controls such as a Knob when styled as an Image Filmstrip. See [UCI
> Styles](https://q-syshelp.qsc.com/Index.htm#Schematic_Library/uci_styles.htm?Highlight=filmstrip) for examples. The
> units will need to be set to `Integer` and the `Min` and `Max` properties configured as for the state trigger. Unlike
> the linked filmstrip examples, the CSS file should use integers as the values and not positions.

```lua
local Animation = require('animation')

local myAnimation = Animation:New(Controls.AnimationStateTrigger, 12, 0.1)
myAnimation:Start()
myAnimation:Stop()
myAnimation:Step()
```

### Example CSS

```css
.animation {
  color: transparent;
  border-color: transparent;
  background-color: transparent;
  background-image: url(gif/animation/frame_00_delay-0.1s.gif);
}
.animation:value(1) {
  background-image: url(gif/animation/frame_01_delay-0.1s.gif);
}
.animation:value(2) {
  background-image: url(gif/animation/frame_02_delay-0.1s.gif);
}
/* etc. */
```
