import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.julialang 1.0

ApplicationWindow {
  title: "Properties"
  visible: true

  ColumnLayout {
    Text { text: numclicks }

    Button {
      text: "Click me!"
      onClicked: Julia.addclick()
    }
  }
}