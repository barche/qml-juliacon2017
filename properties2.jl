using QML

numclicks = 0

function addclick()
  global numclicks
  numclicks += 1
  @qmlset qmlcontext().numclicks = numclicks
end

@qmlfunction addclick

@qmlapp "qml/properties2.qml" numclicks
exec()