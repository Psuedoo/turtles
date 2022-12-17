local chest = peripheral.find("minecraft:chest")
local monitor = peripheral.find("monitor")

for slot, item in pairs(chest.list()) do
  monitor.write(("%d x %s in slot %d"):format(item.count, item.name, slot))
end
