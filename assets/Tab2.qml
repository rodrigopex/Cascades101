import bb.cascades 1.2
import QtQuick 1.0
import Qt.labs.particles 1.0

Page {
    property variant activeTab: tabPane.activeTab
    property variant appScene: Application.scene
    Container {
        TextField {
            id: test
        }
        ListView {
            dataModel: ArrayDataModel {
                id: dm
            }
            attachedObjects: [
                ParticleMotion {
                    
                }
            ]
            onCreationCompleted: {
                dm.append({"nome": "Fulano", "idade": 10, "altura": 1.65})
                dm.append({"nome": "Jose", "idade": 10, "altura": 1.65})
                dm.append({"nome": "Antonio", "idade": 10, "altura": 1.65})
                dm.append({"nome": "Joao", "idade": 10, "altura": 1.65})
                dm.append({"nome": "Cicrano", "idade": 10, "altura": 1.65})
//                for(var i = 0; i < 10000; i++) {
//                    dm.append(i)
//                }
            }
            listItemComponents: ListItemComponent {
                StandardListItem {
                    imageSource: "asset:///images/img.png"
                    title: ListItemData["nome"]
                    description: "idade: "+ ListItemData["idade"]
                    status: ListItemData["altura"] + " m"
                }
            }
        }   
    }
    attachedObjects: [
        QtObject {
            property int idade
        }
    ]
    onActiveTabChanged: {
        console.log("FOCUSSSSSSS! AT")
        test.requestFocus() 
    }
    onAppSceneChanged: {
        // This triggers focus if the application scene is set to
        // this QML Page.
        console.log("FOCUSSSSSSS!")
        test.requestFocus() 
    }
}
