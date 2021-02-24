import QtQuick 2.0
import Sailfish.Silica 1.0
import Info 1.0

Page {
    id: page

    Info {
        id: info
    }

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Info Sample")
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeMedium
                text: "IMEI = " + info.getImei()
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraSmall
                text: "Device ID = " + info.getDeviceID()
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeMedium
                text: "Model = " + info.getModel()
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeMedium
                text: "Name = " + info.getName()
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeMedium
                text: "Version OC = " + info.getVersionOC()
            }
            Label {
                x: Theme.horizontalPageMargin
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeMedium
                text: "Wifi Mac = " + info.getWifiMac()
            }
        }
    }
}
