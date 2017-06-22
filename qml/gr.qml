import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.julialang 1.1
import QtQuick.Window 2.2

ApplicationWindow {
  id: appRoot
  title: "GR"
  width: 800
  height: 600
  visible: true

  RowLayout {
    id: root
    spacing: 6
    anchors.fill: parent

    JuliaPaintedItem {
      id: painter
      paintFunction : paint_cfunction
      width: 650
      Layout.fillHeight: true

      Repeater {
        anchors.fill: parent
        model: pointsModel

        Rectangle {
          width: 8
          height: 8
          color: "blue"

      
          x: (parent.width > parent.height ? ndcx[id-1]*parent.width : ndcx[id-1]*parent.height) - width/2
          y: (parent.width > parent.height ? parent.height-ndcy[id-1]*parent.width : (1-ndcy[id-1])*parent.height) - height/2
        }
      }
    }

    TableView {
      Layout.fillHeight: true
      model: pointsModel
      
      TableViewColumn { role: "id"; title: "Id"; width: 30 }
      TableViewColumn {
        role: "px"
        title: "x"
        width: 60

        delegate: TextField { text: styleData.value; onAccepted: {pointsModel.setProperty(styleData.row, styleData.role, parseFloat(text)); painter.update();} }
      }
      TableViewColumn { role: "py"; title: "y"; width: 60 }
    }
  }
}
