import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    property int defMargin: 10

    SwipeView {
        id: view
        currentIndex: pageIndicator.currentIndex
        anchors.fill: parent

        Page {
            Rectangle{
                anchors.fill: parent
                color: "red"
            }
        }
        Page {
            Rectangle{
                anchors.fill: parent
                color: "yellow"
            }
        }
        Page {
            Rectangle{
                anchors.fill: parent
                color: "green"
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        interactive: true
        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
