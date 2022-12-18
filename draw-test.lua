local monitor = peripheral.find("monitor")
local w, h = monitor.getSize()

if monitor == nil then
	error("No monitor found")
end

monitor.clear()
monitor.setCursorPos(1, 1)
monitor.setBackgroundColor(colors.black)

local function drawBar(x, y, width, height, color)
	monitor.setBackgroundColor(color)
	for i = 0, height - 1 do
		monitor.setCursorPos(x, y + i)
		monitor.write(string.rep(" ", width))
	end
	monitor.setBackgroundColor(colors.black)
end

drawBar(h / 2, w / 2, 1, 1, colors.red)
