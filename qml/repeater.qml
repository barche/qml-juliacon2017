import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.julialang 1.0

ApplicationWindow {
  id: appRoot
  title: "Repeater"
  width: 300
  height: 300
  visible: true

  Rectangle {
    id: board
    width: appRoot.width
    height: appRoot.height
    color: "darkgreen"
    
    Repeater { // Repeat for each emoji
      anchors.fill: parent
      model: emojiModel

      Rectangle { // Each emoji is a rectangle with text in the center
        width: appRoot.width/12
        height: appRoot.height/12
        color: bgcolor // from emoji state
        x: ex*appRoot.width
        y: ey*appRoot.height
        Text {
          anchors.centerIn: parent
          font.pixelSize: 0.75*appRoot.width/(12)
          text: emoji // from emoji state
        }

        MouseArea {
          anchors.fill: parent
          onClicked: numclicks += 1 // updates the clicks on the Julia side
          onPressed: parent.color = "white" // visual feedback for the clicking
          onReleased: parent.color = bgcolor
        }
      }
    }
  }
}
