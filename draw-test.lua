local monitor = peripheral.find("monitor")

if monitor == nil then
	error("No monitor found")
end

monitor.clear()
monitor.setCursorPos(1, 1)
local function drawBar(x, y, width, height, color)
	monitor.setBackgroundColor(color)
	for i = 0, height - 1 do
		monitor.setCursorPos(x, y + i)
		monitor.write(string.rep(" ", width))
	end
end

drawBar(1, 1, 20, 10, colors.red)
