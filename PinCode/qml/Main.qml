import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.15

Window {
    id: window
    width: 500
    height: 600
    property int currentIndex: 0
    property string correctPassword: "123456"

    function updatePassword(digit) {
        if (passwordField.text.length < 6){
            passwordField.text += digit;
            currentIndex = passwordField.text.length;
        }
    }

    function removeLastSymbol() {
        if (passwordField.text.length > 0) {
            passwordField.text = passwordField.text.substring(0, passwordField.text.length - 1);
        }
    }
    ColumnLayout{
        Layout.alignment: Qt.AlignCenter
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        Text{
            id: passwordField
            text: passwordField.text
            color: "white"
        }

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
        }

        Rectangle {
            id: passwordField1
            color: "white"
            border.width: 3
            border.color: "black"
            width: parent.width
            Layout.alignment: Qt.AlignCenter
            height: 50
            Row {
                spacing: 6
                anchors.centerIn: parent
                Layout.alignment: Qt.AlignCenter
                Repeater {
                    model:6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color:index <passwordField.text.length ? "black" : "light grey"
                    }
                }
            }
        }

        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            width: parent.width
            anchors.centerIn: parent
            Layout.alignment: Qt.AlignCenter
            Button {
                text: "1"
                onClicked: updatePassword("1")
            }

            Button {
                text: "2"
                onClicked: updatePassword("2")
            }

            Button {
                text: "3"
                onClicked: updatePassword("3")
            }

            Button {
                text: "4"
                onClicked: updatePassword("4")
            }

            Button {
                text: "5"
                onClicked: updatePassword("5")
            }

            Button {
                text: "6"
                onClicked: updatePassword("6")
            }

            Button {
                text: "7"
                onClicked: updatePassword("7")
            }

            Button {
                text: "8"
                onClicked: updatePassword("8")
            }

            Button {
                text: "9"
                onClicked: updatePassword("9")
            }

            Button {
                text: "<="
                onClicked: removeLastSymbol()

            }

            Button {
                text: "0"
                onClicked: updatePassword("0")
            }

            Button {
                text: "clear"
                onClicked: {
                    passwordField.text = ""
                    currentIndex = 0
                }
            }
        }
    }
}
