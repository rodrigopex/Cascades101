import bb.cascades 1.2

Page {
    id: main
    property int count: 0
    function incCount() {
        if (main.count < 5)
            main.count ++
        console.log(count)
    }
    titleBar: TitleBar {
        title: "Test"
        acceptAction: ActionItem {
            title: "Save"
            onTriggered: {
                incCount()
            }
        }
    }
    Container {
        Label {
            text: count
            textStyle.base: SystemDefaults.TextStyles.BigText
            horizontalAlignment: HorizontalAlignment.Center
        }

        LabelToggleButton {
            label: "Test01"
        }
        LabelToggleButton {
            label: "Test02"
        }
        LabelToggleButton {
            label: "Test03"
        }
        Container {
            layout: DockLayout {
            }
            horizontalAlignment: HorizontalAlignment.Fill
            //background: Color.create("#5500FF00")
            layoutProperties: StackLayoutProperties {
                spaceQuota: 20
            }
            Button {
                //visible: buttonVisibleTB.checked
                text: "Click"
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    if (main.count >= 5)
                        main.count ++
                }
            }
        }
        ImageButton {
            defaultImageSource: "asset:///images/img.png"
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }
        }
    }

}
