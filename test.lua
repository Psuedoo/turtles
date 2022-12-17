local chest = peripheral.find("minecraft:chest")
for slot, item in pairs(chest.list()) do
  print(("%d x %s in slot %d"):format(item.count, item.name, slot))
end
