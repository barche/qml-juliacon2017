import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

ApplicationWindow {
  title: "Hello"
  visible: true

  ColumnLayout {
    Text { text: "Hello world!" }

    Button {
      text: "Goodbye world!"
      onClicked: Qt.quit()
    }
  }
}