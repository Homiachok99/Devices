import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

// используем заготовку pageBackground
PageBackground
{
    id: pageBackground
    width: 400
    height: 1080
    property alias checkWarm: checkWarm
    property alias checkCold: checkCold
    property alias checkBlue: checkBlue
    // обработчики checkBox
    property alias checkBrown: checkBrown
    property alias checkGreen: checkGreen
    property alias checkRed: checkRed
    property alias checkBlack: checkBlack
    title: "Settings"

    // для белой рамочки
    GroupBox
    {
        id: groupBox
        x: 8
        y: 59
        width: 372
        height: 872
        title: qsTr("")

        // компановка GridLayout
        GridLayout
        {
            id: grid
            x: 20
            y: 70
            width: 253
            height: 396
            rows: 4
            columns: 2

            // checkBox если стоит галочка, то выбирается определенный цвет; Label надписи этих цветов, которые можно выбрать
            CheckBox
            {
                id: checkBlack
                text: qsTr("")
                checked: false
            }

            Label
            {
                id: label
                text: qsTr("Black")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkGreen
                text: qsTr("")
            }

            Label
            {
                id: label1
                text: qsTr("Green")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkRed
                text: qsTr("")
            }

            Label
            {
                id: label2
                text: qsTr("Red")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox
            {
                id: checkBrown
                text: qsTr("")
            }

            Label
            {
                id: label4
                color: "#f0f8ff"
                text: qsTr("Cream")
                Layout.preferredHeight: 25
                font.pointSize: 14
                Layout.preferredWidth: 109
            }



            CheckBox
            {
                id: checkWarm
                text: qsTr("")
            }


            Label
            {
                id: label3
                text: qsTr("Warm Purple")
                color: "#F0F8FF"
                Layout.preferredHeight: 25
                Layout.preferredWidth: 109
                font.pointSize: 14
            }

            CheckBox {
                id: checkCold
                text: qsTr("")
            }

            Label {
                id: label6
                color: "#f0f8ff"
                text: qsTr("Cold Purple")
                font.pointSize: 14
                Layout.preferredWidth: 109
                Layout.preferredHeight: 25
            }

            CheckBox {
                id: checkBlue
                text: qsTr("")
            }

            Label {
                id: label5
                color: "#f0f8ff"
                text: qsTr("Blue")
                font.pointSize: 14
                Layout.preferredWidth: 109
                Layout.preferredHeight: 25
            }




        }

        // надпись цвета
        Label
        {
            id: labelColor
            x: 7
            y: 37
            color: "#f0f8ff"
            text: qsTr("Color")
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottomMargin: 1014
            anchors.right: parent.right
            anchors.topMargin: 19
            anchors.rightMargin: 117
            font.pointSize: 18
        }
    }
}
