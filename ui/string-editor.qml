import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.1

RowLayout {
  property TextField textField: textField
  Label {
    text: modelData.label
  }
  TextField {
    id: textField
    placeholderText: modelData.defaultValue
    text: modelData.isDefined() ? modelData.value : ''
    Layout.fillWidth: true
  }
  Binding {
    target: modelData
    property: 'value'
    value: textField.text
  }
}

