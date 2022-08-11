health =8
level_counter_GUID='5c34bc'

function onLoad()
  level_counter = getObjectFromGUID(level_counter_GUID)
  print('health: '..health)
end


function getLevel()
  return level_counter.Counter.getValue()
end

function levelUpAndSetHealth(health)
  level_counter.Counter.increment()
  return self.Counter.setValue(health)
end

function levelUp()
  
  if(getLevel()==1) then
    levelUpAndSetHealth(8)
  elseif(getLevel()==2) then
    levelUpAndSetHealth(10)
  elseif (getLevel()==3) then
    levelUpAndSetHealth(12)
  elseif (getLevel()==4) then
    levelUpAndSetHealth(14)
  elseif (getLevel()==5) then
    levelUpAndSetHealth(16)
  elseif (getLevel()==6) then
    levelUpAndSetHealth(18)
  
  else
    print('Cannot level up more')
  end
end