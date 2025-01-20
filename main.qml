// import QtQuick 2.15
// import QtQuick.Window 2.15
// import QtQuick.Controls 2.2

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Booze or Lose")

//     Column {
//         Rectangle {
//             id: logo
//             width: 50
//             height: 50
//             color: "green"
//         }

//         Button {
//             id: playWithoutMaster
//             width: 150
//             height: 50
//             text: qsTr("Играть без ведущего")
//         }

//         Button {
//             id: playWithMaster
//             width: 150
//             height: 50
//             text: qsTr("Играть с ведущим")
//         }

//         Button {
//             id: rules
//             width: 150
//             height: 50
//             text: qsTr("Правила")
//         }

//         Button {
//             id: quit
//             width: 150
//             height: 50
//             text: "Выход"
//         }
//     }
// }

// /*
// import QtQuick 2.8

// Rectangle {
//     color: myColor
//     width: 200
//     height: 200
//     Text {
//         anchors.centerIn: parent
//         text: myText
//     }
//     ListView {
//         anchors.fill: parent
//         model: myModel
//         delegate: Text {text: model.display}
//     }
//     MouseArea {
//         anchors.fill: parent
//         onPressed: {
//             myWidget.setWindowTitle("Hello from QML");
//             myWidget.slotDisplayDialog();
//         }
//     }
// }
// */
import QtQuick 2.0
import QtQuick.Controls 2.1
// import playscreen   // подключаем компонент Custom

Window {
    width: 250
    height: 200
    visible: true
    title: "METANIT.COM"

    // PlayScreen{             // Определяем объект Custom
    //     id:playscreenObj    // назначаем его идентификатор
    // }
    Column {
        Text {
            id: header
            // anchors.centerIn: parent
            objectName: "header"
            color: 'black'
            font.pixelSize: 42
            visible: true
            text: "text"
            // text: playscreenObj.getTextContent()         // обращаемся к методам
            // font.pixelSize: playscreenObj.getTextSize()  // объекта Custom
            // font.family: "Verdana"
            signal clickedHeader()
            onClickedHeader: {
                header.clickedHeader()
            }
        }
    }


}
