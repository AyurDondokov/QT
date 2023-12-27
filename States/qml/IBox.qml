import QtQuick
import Felgo
import QtQuick.Layouts


Item {
    Layout.fillHeight: true
    Layout.fillWidth: true
    property alias boxText: text.comText
    property bool isActive: false
    Rectangle{
        ICenterText{ id: text }
        anchors.fill: parent
        color: isActive ? "green" : "light gray"
        border.width: 1
        border.color: "silver"
        radius: 2
    }
}
