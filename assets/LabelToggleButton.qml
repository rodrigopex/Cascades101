import bb.cascades 1.2

Container {
    property alias label: labelID.text
    leftPadding: 20
    rightPadding: 20
    topPadding: 10
    //            background: Color.create("#55FF0000")
    horizontalAlignment: HorizontalAlignment.Fill
    layout: DockLayout {
    }
    Label {
        id: labelID
        verticalAlignment: VerticalAlignment.Center
        layoutProperties: StackLayoutProperties {
            spaceQuota: 10
        }
    }
    ToggleButton {
        id: buttonVisibleTB
        checked: true
        horizontalAlignment: HorizontalAlignment.Right
    }
}
