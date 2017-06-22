import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import org.julialang 1.0

ApplicationWindow {
  visible: true
  width: 600
  height: 200
  title: "ListModel"

  // The delegate for each fruit in the model:
  Component {
    id: listDelegate
    RowLayout {
      Text { text: name }
      Text { text: cost }
      TextField {
        text: description
        onAccepted: description = text
      }
    }
  }

  ColumnLayout {
    anchors.fill: parent
    anchors.margins: 10

    ListView {
      Layout.fillWidth: true
      Layout.fillHeight: true
      model: fruitModel
      delegate: listDelegate
    }
  }
}
