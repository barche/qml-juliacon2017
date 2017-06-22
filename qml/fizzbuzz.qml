import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import org.julialang 1.0

ApplicationWindow {
  visible: true
  width: 200
  height: 200
  title: "FizzBuzz"

  ColumnLayout {
    anchors.fill: parent
    anchors.margins: 10

    TextField {
      Layout.fillWidth: true
      placeholderText: "Input a number..."
      validator: IntValidator {
        bottom: 1
        top: 100
      }

      onAccepted: {
        Julia.do_fizzbuzz(fizzbuzz, text);
        fizzbuzz.update();
      }
    }

    GroupBox {
      title: "Result"
      Layout.fillWidth: true
      Text { text: fizzbuzz.result }
    }
    GroupBox {
      title: "Last"
      Layout.fillWidth: true
      Text { text: fizzbuzz.last }
    }
  }
}
