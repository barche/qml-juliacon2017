import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.julialang 1.0

ApplicationWindow {
  title: "Plot"
  width: 600
  height: 400
  visible: true

  ColumnLayout {
    id: root
    spacing: 6
    anchors.fill: parent

    RowLayout {
      Layout.fillWidth: true
      Layout.alignment: Qt.AlignCenter

      Button {
        text: "Plot"
        onClicked: Julia.plotsin(jdisp, jdisp.width, jdisp.height)
      }
    }

    JuliaDisplay {
      id: jdisp
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
  }
}
