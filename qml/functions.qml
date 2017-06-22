import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.julialang 1.0

ApplicationWindow {
  title: "Functions"
  visible: true

  ColumnLayout {
    Text { text: Julia.caption() }

    TextField {
      id: textEntry
      onTextChanged: Julia.settext(text)
    }

    Text { text: Julia.uppercase(textEntry.text) }
  }
}