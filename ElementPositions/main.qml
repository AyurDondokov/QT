import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Minecraft Creeper")

    Rectangle {
        width: parent.width*0.8;
        height: parent.height*0.8;
        color: "green";
        anchors.centerIn: parent;
        Rectangle {
            width: parent.width*0.25;
            height: parent.width*0.25;
            color: "grey";
            x:parent.width/8
            y:parent.height/4
            Rectangle {
                width: parent.width*0.5;
                height: parent.width*0.5;
                color: "black";
                x:parent.width/2
                y:parent.height/2
            }
        }
    }
}
