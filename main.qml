import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

Window {
    id: exam
    width: 640
    height: 480
    visible: true
    title: qsTr("Booze or Lose")

    Connections {
        target: playscreen

        onSendPlayWithoutMaster: {}

        onSendPlayWithMaster: {}

        onSendRules: {}

        onSendQuit: {}
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainscreen

        Component {
            id: mainscreen
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

                    onClicked: {
                        playscreen.receivePlayWithoutMaster()
                        stackView.push(playwithoutmasterscreen)
                    }
                }

                Button {
                    id: playWithMaster
                    width: 150
                    height: 50
                    text: qsTr("Играть с ведущим")

                    onClicked: {
                        playscreen.receivePlayWithMaster()
                        stackView.push(playwithmasterscreen)
                    }
                }

                Button {
                    id: rules
                    width: 150
                    height: 50
                    text: qsTr("Правила")

                    onClicked: {
                        playscreen.receiveRules()
                        stackView.push(rulesscreen)
                    }
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

        Component {
            id: playwithoutmasterscreen
            Column {
                Rectangle {
                    id: logo
                    width: 50
                    height: 50
                    color: "black"
                }

                Button {
                    text: qsTr("Назад")

                    onClicked: {
                        stackView.push(mainscreen)
                    }
                }
            }
        }

        Component {
            id: playwithmasterscreen
            Column {
                Rectangle {
                    id: logo
                    width: 50
                    height: 50
                    color: "yellow"
                }

                Button {
                    text: qsTr("Назад")

                    onClicked: {
                        stackView.push(mainscreen)
                    }
                }
            }
        }

        Component {
            id: rulesscreen
            Column {
                Rectangle {
                    id: logo
                    width: 50
                    height: 50
                    color: "blue"
                }

                Text {
                    id: mytext
                    text: "Правила игры"
                    font.pointSize: 24
                    font.bold: true
                }

                TextEdit {
                    id: myTextEdit
                    // anchors.fill: parent
                    text: "Тут очень много текста с описанием правил игры, и этот текст может не помещаться на экране, поэтому нужно делать перенос текста с помощью слайдера. Вот такие у меня идеи. Тут очень много текста с описанием правил игры, и этот текст может не помещаться на экране, поэтому нужно делать перенос текста с помощью слайдера. Вот такие у меня идеи. Тут очень много текста с описанием правил игры, и этот текст может не помещаться на экране, поэтому нужно делать перенос текста с помощью слайдера. Вот такие у меня идеи."
                    wrapMode: TextEdit.Wrap
                    width: parent.width
                    readOnly: true
                }

                Button {
                    text: qsTr("Назад")

                    onClicked: {
                        stackView.push(mainscreen)
                    }
                }
            }
        }
    }
}
