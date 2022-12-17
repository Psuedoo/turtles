local chest = peripheral.find("minecraft:chest")
local monitor = peripheral.find("monitor")

for slot, item in pairs(chest.list()) do
  monitor.setCursorPos(1, slot)
  monitor.write(("%d x %s in slot %d"):format(item.count, item.name, slot))
end
