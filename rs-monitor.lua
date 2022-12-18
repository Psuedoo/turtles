local bridge = peripheral.find("rsBridge")
local monitor = peripheral.find("monitor")

monitor.clear()

if bridge == nil then
	error("rsBridge not found")
end

local maxStorage = bridge.getMaxItemDiskStorage()

monitor.write(maxStorage)
