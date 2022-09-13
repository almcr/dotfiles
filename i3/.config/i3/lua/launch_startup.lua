local monitors_cmd = 'xrandr | grep " connected" | cut -d" " -f1'
local handle = io.popen(monitors_cmd)

local l
while (l = handle:read("l")) and l == nil do
  q
end
