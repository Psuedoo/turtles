local bridge = peripheral.find("rsBridge")
local monitor = peripheral.find("monitor")

monitor.clear()

if bridge == nil then
	error("rsBridge not found")
end

local maxStorage = bridge.getMaxItemDiskStorage()

local function drawBar(x, y, width, height, percent, color)
	monitor.setBackgroundColor(color)
	monitor.fill(x, y, width, height, " ")
	monitor.setBackgroundColor(colors.black)
	monitor.fill(x, y, math.floor(width * percent), height, " ")
end

drawBar(1, 1, 51, 1, 1, colors.white)
