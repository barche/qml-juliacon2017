using QML

mutable struct TextRef
  value::String
end

textproperty = TextRef("text")

@qmlapp "qml/properties.qml" textproperty
exec()

println("Entered text: ", textproperty.value)