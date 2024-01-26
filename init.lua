local Animation = {}

--- Create a new animation object.
--- @param control table The control to animate based on value, usually a knob or fader.
--- @param frames number? The number of frames in the animation, defaults to 10.
--- @param period number? The time each frame should be visible for, default 0.1s.
--- @return table # The animation object.
function Animation:New(control, frames, period)
  local o = {
    Control = control,
    Frames = frames or 10,
    Period = period or 0.1,
    Timer = Timer.New(),
  }
  o.Timer.EventHandler = function() o:Step() end
  setmetatable(o, self)
  self.__index = self
  return o
end

--- Move to the next frame.
function Animation:Step()
  local nextFrame = self.Control.Value + 1
  if nextFrame >= self.Frames then
    nextFrame = 0
  end
  self.Control.Value = nextFrame
end

--- Start the animation.
function Animation:Start()
  if not self.Timer:IsRunning() then
    self.Timer:Start(self.Period)
  end
end

-- Stop the animation.
function Animation:Stop()
  self.Timer:Stop()
end

return Animation
