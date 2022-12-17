local chest = peripheral.find("functionalstorage:storage_controller")
local monitor = peripheral.find("monitor")

monitor.clear()

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

local w, h = monitor.getSize()


for slot, item in pairs(chest.list()) do
  monitor.setCursorPos(1, slot)
  local current = item.count
  local max = chest.getItemLimit(slot)
  local percentage =  (current/max)*100
  local per = string.format("%2d", percentage) 
  local name = Split(item.name, ":")[2]:gsub("%_", " ")
  local dispCurrent = string.format("% 6d", current)
  local dispSlot = string.format("% 3d", slot)
  
  local leftStatement = ("%s. %s"):format(dispSlot, name)
  local pNum = math.ceil(percentage/10)
  local progress = string.rep("=", pNum)
  local empty = string.rep("-", 10 - pNum)
  local pBar = ("[%s%s]"):format(progress,empty)
  local rightStatement = ("%s %s%%"):format(pBar, per)
  local sW = string.len(leftStatement)
  local diff = w - sW
  monitor.write(leftStatement)
  monitor.setCursorPos(w-15, slot)
  monitor.write(rightStatement)
end

local posX, posY = monitor.getCursorPos()
