import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import org.julialang 1.0

ApplicationWindow {
  visible: true
  width: 600
  height: 200
  title: "ListModel"

  ColumnLayout {
    anchors.fill: parent
    anchors.margins: 10

    TableView {
      Layout.fillWidth: true
      Layout.fillHeight: true
      model: fruitModel
      
      TableViewColumn { role: "name"; title: "Name" }
      TableViewColumn { role: "cost"; title: "Cost" }
      TableViewColumn { role: "description"; title: "Description" }
    }
  }
}
