import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Minecraft Creeper")
    // Head
    Rectangle {
        width: parent.width*0.8;
        height: parent.height*0.8;
        color: "green";
        anchors.centerIn: parent;
        // Eye left
        Rectangle {
            width: parent.width*0.25;
            height: parent.width*0.25;
            color: "grey";
            x:parent.width/8
            y:parent.height/4
            Rectangle {
                width: parent.width*0.5;
                height: parent.height*0.5;
                color: "black";
                x:parent.width/2
                y:parent.height/2
            }
        }
        //Eye right
        Rectangle {
            width: parent.width*0.25;
            height: parent.width*0.25;
            color: "grey";
            x:parent.width*5/8
            y:parent.height/4
            Rectangle {
                width: parent.width*0.5;
                height: parent.height*0.5;
                color: "black";
                x:0
                y:parent.height/2
            }
        }

        // Mouth
        Rectangle {
            width: parent.width*0.25;
            height: parent.width*0.125;
            color: "black";
            x:parent.width*3/8
            y:parent.height*4/8
        }
        Rectangle {
            width: parent.width*0.5;
            height: parent.width*0.125;
            color: "black";
            x:parent.width*2/8
            y:parent.height*5/8
        }
        Rectangle {
            width: parent.width*0.125;
            height: parent.width*0.125;
            color: "black";
            x:parent.width*2/8
            y:parent.height*6/8
        }
        Rectangle {
            width: parent.width*0.125;
            height: parent.width*0.125;
            color: "black";
            x:parent.width*5/8
            y:parent.height*6/8
        }
    }

}
