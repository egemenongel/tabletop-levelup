level=1

function onLoad()
  print('level: '..level)
  initialState()
end

function initialState()
  self.setState(1)
end

