import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Booze or Lose")

    Connections {
        target: playscreen

        onSendPlayWithoutMaster: {
        }

        onSendPlayWithMaster: {
        }

        onSendRules: {
        }

        onSendQuit: {
        }
    }

    Column {
        Rectangle {
            id: logo
            width: 50
            height: 50
            color: "green"
        }

        Button {
            id: playWithoutMaster
            width: 150
            height: 50
            text: qsTr("Играть без ведущего")

            onClicked: playscreen.receivePlayWithoutMaster()
        }

        Button {
            id: playWithMaster
            width: 150
            height: 50
            text: qsTr("Играть с ведущим")

            onClicked: playscreen.receivePlayWithMaster()
        }

        Button {
            id: rules
            width: 150
            height: 50
            text: qsTr("Правила")

            onClicked: playscreen.receiveRules()
        }

        Button {
            id: quit
            width: 150
            height: 50
            text: "Выход"

            onClicked: {
                playscreen.receiveQuit()
                Qt.quit()
            }
        }
    }
}

