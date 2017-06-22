using QML

mutable struct TextRef
  value::String
end

textproperty = TextRef("text")

@qmlapp "qml/properties1.qml" textproperty
exec()

println("Entered text: ", textproperty.value)