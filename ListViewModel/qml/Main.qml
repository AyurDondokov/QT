import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")
    property int defMargin: 8
    ListModel {
            id: my_model
            ListElement { name: "Hello"; time: "10:00" }
            ListElement { name: "How are you?"; time: "10:05" }
        }

    Page{
        id:page
        anchors.fill:parent
        ListView {
                    id: listView
                    anchors.fill: parent
                    model: my_model

                    delegate: Rectangle {
                        height: 60
                        width: parent.width
                        gradient: Gradient {
                            GradientStop { position: 0; color: "lightgray" }
                            GradientStop { position: 1; color: "white" }
                        }

                        Text {
                            text: name
                            anchors.left: parent.left
                            anchors.leftMargin: defMargin
                            font.pointSize: 14
                            verticalAlignment: Text.AlignVCenter
                        }

                        Text {
                            text: time
                            anchors.right: parent.right
                            anchors.rightMargin: defMargin
                            font.pointSize: 12
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                }
        footer: PageFooter {
            onNewMessage: {
                //Append new message
                var newMsg = {};
                newMsg.name = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}
