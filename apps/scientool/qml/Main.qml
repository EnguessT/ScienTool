/**
 * @file Main.qml
 *
 * Description: Just contains the main ApplicationWindow of the GUI
 *
 * @author EnguessT
 */

import QtQuick
import QtQuick.Controls
import "components/mainwindow"

ApplicationWindow {
    id: root
    visible: true
    width: 1600
    height: 900
    title: "Scientool"

    Rectangle {
        anchors.fill: parent
        color: "#0096FF"

        HeaderBar {
            id: headerBar
            width: parent.width
            height: parent.height * 0.2
        }
    }



}