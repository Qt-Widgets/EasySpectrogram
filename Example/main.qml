import QtQuick 2.12
import QtQuick.Window 2.12
import EasySpectrogram 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    QmlItem{
        id:item
        anchors.fill: parent
        anchors.margins: 20

        name: "test"

        onNameChanged: console.log(name)
    }

    Component.onCompleted: item.name="test qml plugin";
}
