import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import org.julialang 1.0

ApplicationWindow {
  visible: true
  width: 200
  height: 200
  title: "States"

  ColumnLayout {
    anchors.fill: parent
    anchors.margins: 10

    TextField {
      Layout.fillWidth: true
      placeholderText: "Input a number..."
      validator: IntValidator {}

      onAccepted: {
        Julia.process_state(juliastate, text);
        juliastate.update();
      }
    }

    Rectangle {
      id: statusRect
      Layout.fillWidth: true
      Layout.fillHeight: true
      state: juliastate.state

      Text { id: statusText; anchors.centerIn: parent }

      states: [
        State {
          name: "STARTUP"
          PropertyChanges { target: statusRect; color: "white"}
          PropertyChanges { target: statusText; text: qsTr("Nothing yet") }
        },
        State {
          name: "ODD"
          PropertyChanges { target: statusRect; color: "red"}
          PropertyChanges { target: statusText; text: qsTr("Odd") }
        },
        State {
          name: "EVEN"
          PropertyChanges { target: statusRect; color: "green"}
          PropertyChanges { target: statusText; text: qsTr("Even") }
        }
      ]
    }
  }
}
