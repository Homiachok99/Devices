import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow
{
    property string changecolor: _saveColor.colorSet_colorChange() // переменные для фона
    property string changerect: _saveColor.colorSet_colorRect()
    property string textUp: ""
    property bool valueTrue: true
    property bool valueFalse: false
    property int count: 1
    id: applicationWindow
    visible: true
    width: 1920 // размеры окна приложения
    height: 1080
    title: qsTr("Working with peripheral devices")

    StackLayout // собственно, где место расположения страниц
    {

        id: swipeView
        focus:true
        anchors.left: sideBar.right // компановка
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top // компановка
        currentIndex: tabBar.currentIndex

        Devices // подключение стр переф устр
        {
            id: devices
            title: "Peripheral devices"
            focus: true
            PageBackground
            {
                id: pageBackground
                x: 54
                y: 80
                width: 1063
                height: 825
                ScrollView
                {
                    id: scrollView
                    x: 92
                    y: 108
                    width: 1043
                    height: 811
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.top: parent.top
                    anchors.topMargin: 14
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    contentWidth: availableWidth
                    Text // будет осуществлятся ввывод о переф устр
                    {
                        id: textArea
                        width: 862
                        verticalAlignment: Text.AlignTop
                        elide: Text.ElideNone
                        clip: true
                        font.wordSpacing: -4
                        font.pointSize: 14
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        color: "#f0ffff"
                        text: stroka
                        anchors.left: parent.left
                        anchors.leftMargin: 6
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 8
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: -727
                        font.italic: true
                        horizontalAlignment: Text.AlignLeft
                        textFormat: Text.AutoText
                        font.weight: Font.DemiBold
                        font.family: "Courier"
                    }
                }
            }

            Button {
                id: writeButton
                x: 1138
                y: 830
                width: 222
                height: 40
                checkable: false
                checked: false
                Text {
                    id: buttonWriteFile
                    x: 0
                    y: 0
                    width: 222
                    height: 40
                    text: qsTr("Write to file")
                    font.pointSize: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                font.pointSize: 16
                onClicked: _myClass.cppSlots()
            }
        }

        Devices // подключение стр процессор
        {
            title: "CPU"
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
                ScrollView
                {
                    id: scrollView1
                    x: 92
                    y: 108
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 20
                    anchors.topMargin: 14
                    anchors.fill: parent
                    contentWidth: availableWidth
                    Text // будет осуществлятся ввывод о переф устр
                    {
                        id: textArea1
                        width: 862
                        verticalAlignment: Text.AlignTop
                        elide: Text.ElideNone
                        clip: true
                        anchors.leftMargin: 6
                        anchors.topMargin: 8
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -727
                        anchors.fill: parent
                        font.wordSpacing: -4
                        font.pointSize: 14
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        color: "#f0ffff"
                        text: cpuinf
                        font.italic: true
                        horizontalAlignment: Text.AlignLeft
                        textFormat: Text.AutoText
                        font.weight: Font.DemiBold
                        font.family: "Courier"
                    }
                }
            }
        }

        Devices // подключение стр память
        {
            title: "Memory"
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
                ScrollView
                {
                    id: scrollView2
                    x: 92
                    y: 108
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 20
                    anchors.topMargin: 14
                    anchors.fill: parent
                    contentWidth: availableWidth
                    Text // будет осуществлятся ввывод о переф устр
                    {
                        id: textArea2
                        width: 862
                        verticalAlignment: Text.AlignTop
                        elide: Text.ElideNone
                        clip: true
                        anchors.leftMargin: 6
                        anchors.topMargin: 8
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -727
                        anchors.fill: parent
                        font.wordSpacing: -4
                        font.pointSize: 14
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        color: "#f0ffff"
                        text: meminf
                        font.italic: true
                        horizontalAlignment: Text.AlignLeft
                        textFormat: Text.AutoText
                        font.weight: Font.DemiBold
                        font.family: "Courier"
                    }
                }
            }
        }

        Devices //System Devices
        {
            title: "System devices"
            PageBackground
            {
                x: 54
                y: 80
                width: 1063
                height: 825
                ScrollView
                {
                    id: scrollView3
                    x: 92
                    y: 108
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 20
                    anchors.topMargin: 14
                    anchors.fill: parent
                    contentWidth: availableWidth
                    Text // будет осуществлятся ввывод о переф устр
                    {
                        id: textArea3
                        width: 862
                        verticalAlignment: Text.AlignTop
                        elide: Text.ElideNone
                        clip: true
                        anchors.leftMargin: 6
                        anchors.topMargin: 8
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -727
                        anchors.fill: parent
                        font.wordSpacing: -4
                        font.pointSize: 14
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        color: "#f0ffff"
                        text: devinf
                        font.italic: true
                        horizontalAlignment: Text.AlignLeft
                        textFormat: Text.AutoText
                        font.weight: Font.DemiBold
                        font.family: "Courier"
                    }
                }
            }
        }

        Devices //Keyboard
        {
            visible: true
            title: "Work with the keyboard"

            Text
            {
                id: inputButton
                x: 122
                y: 120
                width: 546
                height: 44
                color: "#f0ffff"
                text: qsTr("Please, enter 1 and press button, then the indicators will turn on")
                font.pointSize: 17
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
            }

            Button
            {
                id: buttonInput
                x: 446
                y: 170
                width: 222
                height: 40
                Text
                {
                    id: inpuButton
                    x: 0
                    y: 0
                    width: 222
                    height: 40
                    text: qsTr("Input")
                    font.pointSize: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                font.pointSize: 16
                onClicked:
                {
                    count = 1
                    _myClass.keySlots(textField.text)
                }
            }

            TextField
            {
                id: textField
                x: 122
                y: 170
                focus: false
                width: 278
                height: 40
                text: qsTr("")
                visible: true
                opacity: 0.9
                font.pointSize: 15
            }

            Keys.onPressed:
            {
                if (event.key === Qt.Key_Up)
                {
                    textUp = "Press the key of any keyboard indicator"
                    count = 0
                }
                else if (event.key === Qt.Key_CapsLock && count === 0)
                {
                    textUp = "It was CapsLock"
                }
                else if (event.key === Qt.Key_NumLock && count === 0)
                {
                    textUp = "It was NumLock"
                }
                if (event.key === Qt.Key_F2)
                {
                    invector.keyFSlots();
                    count = 1
                }
            }

            Text
            {
                id: upButton
                x: 122
                y: 282
                width: 546
                height: 44
                color: "#f0ffff"
                text: qsTr("Please, press the up arrow key")
                font.pointSize: 17
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
            }

            Text
            {
                id: upField
                x: 122
                y: 332
                width: 546
                height: 44
                color: "#f0ffff"
                text: textUp
                visible: true
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 17
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: three
                x: 122
                y: 426
                width: 546
                height: 44
                color: "#f0ffff"
                text: qsTr("To invert the state of the keys (CapsLock, Insert, NumLock), press the function key F2 (F2 + Fn).")
                horizontalAlignment: Text.AlignLeft
                font.pointSize: 17
                verticalAlignment: Text.AlignVCenter
            }
        }

        Devices
        {
            title: "Serial port"

            Frame
            {
                id: frame
                x: 218
                y: 108
                width: 912
                height: 46
                Text
                {
                    id: textPort
                    color: "#f0ffff"
                    text: qsTr("Алгоритм обращения к последовательному порту")
                    anchors.right: parent.right
                    anchors.rightMargin: -18
                    anchors.left: parent.left
                    anchors.leftMargin: -14
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: -22
                    anchors.top: parent.top
                    anchors.topMargin: -16
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    visible: true
                    font.pointSize: 17
                }
            }


            Frame {
                id: frame1
                x: 62
                y: 182
                width: 1279
                height: 53

                Text
                {
                    id: texPort
                    color: "#f0ffff"
                    text: qsTr("Кофигурирование выводов: разрешение расширения адреса, конфигурироване P1CFG, P2CFG, P3CFG, SIOCPG.")
                    anchors.right: parent.right
                    anchors.rightMargin: 207
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 6
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignLeft
                    visible: true
                    font.pointSize: 15
                }
            }

            Frame {
                id: frame2
                x: 62
                y: 280
                width: 1279
                height: 74

                Text {
                    id: texPort1
                    color: "#f0ffff"
                    text: qsTr("Настройка праметров приема и передачи: разрешение доступа к регистру делителя частоты, настройка предделителя частоты.(0-й бит регистра БА + 0 равн 1)")
                    wrapMode: Text.WordWrap
                    anchors.right: parent.right
                    anchors.rightMargin: 213
                    anchors.left: parent.left
                    anchors.leftMargin: -6
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: -36
                    anchors.top: parent.top
                    anchors.topMargin: 1
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignLeft
                    visible: true
                    font.pointSize: 15
                }
            }

            Frame {
                id: frame3
                x: 62
                y: 420
                width: 1279
                height: 171

                Text {
                    id: texPort2
                    color: "#f0ffff"
                    text: qsTr("Передача и прием: насторойка длины слова, типа четности, разрешение доступа к буферным регистрам передатчика и приемника(0-й и 1-й биты регистра БА + 3 равны 1), считывание линии состояния до загрузки данных в буфер предатчика(5-й бит регистра БА + 5 равен 1): если буфер не пуст - ожидание, если пуст - загрузка данных по указанному адресу, приемника в нужную ячейку, считывание состояния линии после передачи(проверка 0-го и 6-го бита регистра БА + 5, если там 1, то приемник принял данные): зацикливание, пока приемник не принял данные, чтение данных из буфера повтор передачи.")
                    wrapMode: Text.WordWrap
                    anchors.right: parent.right
                    anchors.rightMargin: 213
                    anchors.left: parent.left
                    anchors.leftMargin: -6
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 52
                    anchors.top: parent.top
                    anchors.topMargin: -2
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignLeft
                    visible: true
                    font.pointSize: 15
                }
            }
        }
    }

    TabBar
    {
        id: tabBar
        x: 300    // координаты расположения
        y: 1030
        width: 980    // размеры
        height: 47
        font.pointSize: 14
        anchors.right: parent.right      // компановка
        anchors.rightMargin: -6
        anchors.left: sideBar.right
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0 // компановка
        currentIndex: swipeView.currentIndex
        TabButton // кнопки нижняя панель
        {
            id: deviceButton
            height: 47
            text: textView
        }
        TabButton
        {
            id: cpuButton
            height: 47
            text: qsTr("CPU")
        }
        TabButton
        {
            id: memoryButton
            height: 47
            text: qsTr("Memory")
        }
        TabButton
        {
            id: osButton
            height: 47
            text: qsTr("Devices")
        }
        TabButton
        {
            id:keyButton
            height: 47
            text: qsTr("Keyboard")
        }
        TabButton
        {
            id:comButton
            height: 47
            text: qsTr("Serial port")
        }
    }

    SideBar // панель settings
    {
        checkBlack.checked: _saveColor.check_Black()
        checkGreen.checked: _saveColor.check_Green()
        checkRed.checked: _saveColor.check_Red()
        checkBrown.checked: _saveColor.check_Brown()
        checkWarm.checked: _saveColor.check_Warm()
        checkCold.checked: _saveColor.check_Cold()
        checkBlue.checked: _saveColor.check_Blue()
        checkBlue.onClicked:
        {
            changecolor = "#394261"
            changerect = "#5F6DA1"
            checkRed.checked = false
            checkGreen.checked = false
            checkCold.checked = false
            checkWarm.checked = false
            checkBlack.checked = false
            checkBrown.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "false", "false", "false", "false", "false", "true")
        }
        checkCold.onClicked:
        {
            changecolor = "#635F73"
            changerect = "#8D87A3"
            checkRed.checked = false
            checkGreen.checked = false
            checkWarm.checked = false
            checkBlue.checked = false
            checkBlack.checked = false
            checkBrown.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "false", "false", "false", "false", "true", "false")
        }
        checkWarm.onClicked:
        {
            changecolor = "#6B6373"
            changerect = "#9A8EA6"
            checkBlack.checked = false
            checkGreen.checked = false
            checkRed.checked = false
            checkBlue.checked = false
            checkCold.checked = false
            checkBrown.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "false", "false", "false", "true", "false", "false")
        }
        checkBrown.onClicked:
        {
            changecolor = "#73646F"
            changerect = "#AB94A5"
            checkBlack.checked = false
            checkGreen.checked = false
            checkRed.checked = false
            checkWarm.checked = false
            checkCold.checked = false
            checkBlue.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "false", "false", "true", "false", "false", "false")
        }
        checkRed.onClicked:
        {
            changecolor = "#95002B"
            changerect = "#AC2B50"
            checkBlack.checked = false
            checkGreen.checked = false
            checkWarm.checked = false
            checkBlue.checked = false
            checkCold.checked = false
            checkBrown.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "false", "true", "false", "false", "false", "false")
        }
        checkGreen.onClicked:
        {
            changecolor = "#2F4F4F"
            changerect = "#508080"
            checkBlack.checked = false
            checkRed.checked = false
            checkWarm.checked = false
            checkBlue.checked = false
            checkBrown.checked = false
            checkCold.checked = false
            _saveColor.colorSlots(changecolor, changerect, "false", "true", "false", "false", "false", "false", "false")
        }
        checkBlack.onClicked:
        {
            changecolor = "#000000"
            changerect = "#3A3A3A"
            checkRed.checked = false
            checkGreen.checked = false
            checkWarm.checked = false
            checkBlue.checked = false
            checkCold.checked = false
            checkBrown.checked = false
            _saveColor.colorSlots(changecolor, changerect, "true", "false", "false", "false", "false", "false", "false")
        }
        id: sideBar
        y: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
}
