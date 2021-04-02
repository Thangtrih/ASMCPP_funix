import QtQuick 2.11

Image {
    property string imageShuffleRealease: "Image/shuffle.png"
    property string imageShufflePress: "Image/shuffle-1.png"
    id: imageShuffleEvent
    source: imageShuffleRealease
    MouseArea{
        id:buttonShuffleControls
        implicitWidth: imageShuffleEvent.width
        implicitHeight: imageShuffleEvent.height
        onPressed: {
            imageShuffleEvent.source = imageShufflePress
        }
        onReleased: {
            imageShuffleEvent.source = imageShuffleRealease
        }
    }
}




