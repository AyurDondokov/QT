import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.15

Window {
    id: window
    width: 428
    height: 926
    Rectangle{
        anchors.fill: parent;
        color: "#14203D"
    }

    Item {
        width: parent.width*9/10
        height: parent.height*0.75
        anchors.centerIn: parent
        ColumnLayout {
            anchors.centerIn: parent
            width: parent.width
            height: parent.height
            spacing: 10

            Image {
                source: "../assets/Icons/LittleTextIcon.svg"
                width: parent.width / 2
                height: width
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
            }

            ColumnLayout {
                Label {
                    text: "Добро пожаловать!"
                    font.family: "Inter"
                    font.bold: true
                    font.pixelSize: 26
                    color: "white"
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                }
                Label {
                    text: "Email"
                    opacity: 0.5
                    font.family: "Inter"
                    font.pixelSize: 18
                    color: "white"
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                }
                TextField {
                    id: emailField
                    placeholderText: "Email..."
                    background: Rectangle {
                        color: "#59698E"
                        radius: 5
                    }
                    color: "white" // Set the text color here
                    leftPadding: 40
                    Image {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 8
                        width: 24
                        height: 24
                        source: "../assets/Icons/usertag.svg"
                    }
                    font.pixelSize: 16
                    padding: 15
                    Layout.fillWidth: true
                }
            }
            ColumnLayout {
                Label {
                    text: "Пароль"
                    opacity: 0.5
                    font.family: "Inter"
                    font.pixelSize: 18
                    color: "white"
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                }
                TextField {
                    id: passwordField
                    placeholderText: "Пароль..."
                    echoMode: TextInput.Password
                    background: Rectangle {
                        color: "#59698E"
                        radius: 5
                    }
                    color: "white" // Set the text color here
                    leftPadding: 40
                    Image {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 8
                        width: 24
                        height: 24
                        source: "../assets/Icons/lock.svg"
                    }
                    font.pixelSize: 16
                    padding: 15
                    Layout.fillWidth: true
                }
                Label {
                    text: "Забыли пароль?"
                    color: "white"
                    opacity: 0.5
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignRight
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                }
            }



            Button {
                text: "Войти"
                width: parent.width
                padding: 15
                background: Rectangle {
                    color: "#FFAB00"
                    radius: 5
                }
                font.pixelSize: 16
                font.bold: true
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                onClicked: {
                    // Действия при нажатии кнопки
                }
            }
            Button {
                text: "Очистить"
                width: parent.width
                padding: 15
                background: Rectangle {
                    color: "light gray"
                    radius: 5
                }
                font.pixelSize: 16
                font.bold: true
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                onClicked: {
                    passwordField.text = ""
                    emailField.text = ""
                }
            }
        }
    }
}
