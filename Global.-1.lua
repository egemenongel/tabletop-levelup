board1_GUID= 'b1d036'

health_counter_GUID= '16bb61'
level_counter_GUID='5c34bc'
button_parameters = {
    click_function='buttonClicked', function_owner=nil, label='Level Up',
    position={0,0.8,0}, rotation={0,0,0}, width=500, height=500, font_size=100
}



function onLoad()
    board1 = getObjectFromGUID(board1_GUID)
    object1 = getObjectFromGUID(object1_GUID)
    object2 = getObjectFromGUID(object2_GUID)
    health_counter = getObjectFromGUID(health_counter_GUID)
    level_counter = getObjectFromGUID(level_counter_GUID)
    board1.setName('Tahta')
    health_counter.setName('Health Counter')
    level_counter.setName('Level Counter')
    board1.createButton(button_parameters)
    exampleFunction()


end

function board1Initial()
  board1.setLock(false)
  board1.flip()
end

function exampleFunction()
    print('Started')
end


function buttonClicked()
    print('button')
   
    health_counter.call('levelUp')
end

function checkLevel()
  if(level_counter.Counter.getValue() ==2) then
    health_counter.Counter.setValue(10)
  elseif (level_counter.Counter.getValue() ==3) then
    health_counter.Counter.setValue(12)
  end
end

function checkIsFaceUp(object_name)
  if object_name.is_face_down==false then
    print(true)
  else
    print(false)
  end
end