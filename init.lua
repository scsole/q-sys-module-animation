local Animation = {}

--- Create a new animation object.
-- @param control The control to animate based on value, usually a knob or fader.
-- @param frames The number of frames in the animation, defaults to 10.
-- @param period The time each frame should be visible for, default 0.1s.
-- @return The animation object, or nil when given a nil reference.
function Animation:New(control, frames, period)
  if control == nil then
    return nil
  end
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
  self.Timer:Start(self.Period)
end

-- Stop the animation.
function Animation:Stop()
  self.Timer:Stop()
end

return Animation
