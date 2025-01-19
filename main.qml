import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Booze or Lose")

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
        }

        Button {
            id: playWithMaster
            width: 150
            height: 50
            text: qsTr("Играть с ведущим")
        }

        Button {
            id: rules
            width: 150
            height: 50
            text: qsTr("Правила")
        }

        Button {
            id: quit
            width: 150
            height: 50
            text: "Выход"
        }
    }
}
