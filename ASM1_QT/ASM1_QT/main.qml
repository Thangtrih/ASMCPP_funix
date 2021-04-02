import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    id: windowRoot
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int footWidth : 0
    property int  footYPossition: 0
    Rectangle{
        id: rectTop
        x:0
        y:0
        width: windowRoot.width
        height: windowRoot.height/5
        border.color: "black"
        Image {
            id: idTitle
            source: "Image/title.png"
            anchors.fill: parent
            width: windowRoot.width
            height: windowRoot.height/5

        }
        Text {
            anchors.centerIn: parent
            text: "Media Player"
            font.bold: true
            font.pointSize: 25
            color: "white"
        }
        // add code
    }
    Item{
        id: boxleftApp
        Rectangle{
            id: recLeftForListSong
            x:0
            y:windowRoot.height/5
            width: windowRoot.width/4
            height:windowRoot.height*4/5
            border.color: "black"
            // the Image for play List of song
            Image {
                id:recLeftForBackgoundListSongTitle
                x:0
                y:0
                width:recLeftForListSong.width
                height:recLeftForListSong.height
                source: "Image/playlist.png"

            }
            Image {
                id:recLeftForListSongTitle
                x:0
                y:0
                width:recLeftForListSong.width
                height:recLeftForListSong.height/5
                source: "Image/playlist_item.png"
                Text{
                    anchors.centerIn: parent
                    text:"Playlist item"
                    font.bold: true
                    font.pointSize: 10
                    color: "white"
                }
            }
        }
    }
    // area controls of user
    Item {
        id:boxRightApp
        Rectangle{
            id: recRightProgramMedia
            x: windowRoot.width/4
            y: windowRoot.height/5
            width: windowRoot.width*3/4
            height: windowRoot.height*4/5
            border.color: "black"
            // background of Application
            Image{
                id: backgroundApp
                x:0
                y:0
                width: windowRoot.width*3/4
                height: windowRoot.height*4/5
                source: "Image/background.png"
            }

            // the rectangle text title
            Item {
                id: idheaderApp
                x:0
                y:0
                Text{
                    x: 0
                    y: 0
                    text: "Music title<br>Singer"
                    font.bold: true
                    font.pointSize: 15
                    color: "white"
                }


                Image{
                    id: idIconMusicNote
                    x: windowRoot.width*3/4 - 30
                    y: 0
                    source: "Image/music.png"
                    anchors.rightMargin: 5
                    anchors.topMargin: 5
                    width: 20
                    height: 20
                }
            }
            Item{
                id: middleApp
                x: 0
                y:recRightProgramMedia.height/5
                Image {
                    id: label1
                    source: "Image/Bui-Anh-Tuan.png"
                    x:recRightProgramMedia.width/20
                    y: 30
                    width: recRightProgramMedia.width /4
                    height: recRightProgramMedia.height*1.5/4
                }
                Image {
                    id: label2
                    source: "Image/Hongkong1.png"
                    x:label1.width + 2*recRightProgramMedia.width/20
                    y: 10
                    width: recRightProgramMedia.width*1.2/4
                    height:recRightProgramMedia.height*2/4
                }
                Image {
                    id: label3
                    source: "Image/Ha-Anh-Tuan.png"
                    x:label1.width + label2.width + 3*recRightProgramMedia.width/20
                    y: 30
                    width:  recRightProgramMedia.width /4
                    height: recRightProgramMedia.height*1.5/4

                }
            }
            // footder of media Application
            Item {
                id: footder
                x:0
                y: recRightProgramMedia.height/5 + recRightProgramMedia.height*2.5/4
                Rectangle{
                    id:taskProcess
                    x: 0
                    y: 10
                    Text{
                        id:textLeftOfprocess
                        x: recRightProgramMedia.width/12
                        y:-5
                        text:"00:00"
                        width:recRightProgramMedia.width/12
                        color: "white"

                    }

                    Image {
                        id: taskProcessBlack
                        x: 2*recRightProgramMedia.width/12
                        y: 0
                        source: "Image/progress_bar_bg.png"
                        width:recRightProgramMedia.width*8/12
                        Image {
                            id:taskProcessWhite
                            source: "Image/progress_bar.png"
                            width:taskProcessBlack.width/6
                        }
                        Image {
                            id: pointProcessBlack
                            x: taskProcessBlack.width/6
                            y: -7
                            source: "Image/point.png"
                            width: 20
                            height:20
                        }
                        Image {
                            id:pointProcessWhite
                            x: taskProcessBlack.width/6 + 5
                            y:-3
                            source: "Image/center_point.png"
                            width: 10
                            height:10
                        }
                    }
                    Text{
                        id:textRightOfprocess
                        x: recRightProgramMedia.width*10.5/12
                        y:-5
                        text:"00:00"
                        width:recRightProgramMedia.width/12
                        color: "white"

                    }
                }
                Rectangle{
                    id:buttonControls
                    x:0
                    y:30
                    // possition of shuffle Button------------>events
                    Image {
                        property string imageShuffleRelease: "Image/shuffle.png"
                        property string imageShufflePress: "Image/shuffle-1.png"
                        id: shuffleButton
                        x:recRightProgramMedia.width/12
                        y:0
                        source: imageShuffleRelease
                        width:30
                        height:30
                        MouseArea{
                            id:buttonShuffleControls
                            //property url imageShuffleRealease: "Image/shuffle.png"
                            //property url imageShufflePress: "Image/shuffle-1.png"
                            anchors.fill: parent
                            implicitWidth: shuffleButton.width
                            implicitHeight: shuffleButton.height
                            onPressed: {
                                shuffleButton.source = shuffleButton.imageShufflePress
                                console.log("shuffleButton on press")
                            }
                            onReleased: {
                                shuffleButton.source = shuffleButton.imageShuffleRelease
                                console.log("shuffleButton on release")
                            }
                        }
                    }
                    //possiton of previous--------->events
                    Image {
                        property string prevButtonPress: "Image/hold-prev.png"
                        property string prevButtonRelease: "Image/prev.png"
                        id: prevButton
                        x: recRightProgramMedia.width*5.3/12
                        source: prevButtonRelease
                        width:recRightProgramMedia.width*0.5/12
                        height:30
                        MouseArea{
                            id:prevButtonControl
                            anchors.fill: parent
                            implicitWidth: shuffleButton.width
                            implicitHeight: shuffleButton.height
                            onPressed: {
                                prevButton.source = prevButton.prevButtonPress
                                console.log("prevButton on press")
                            }
                            onReleased: {
                                prevButton.source = prevButton.prevButtonRelease
                                console.log("prevButton on release")
                            }
                        }
                    }
                    //possition of pause button----------->events
                    Image{
                        property string pauseButtonPress: "Image/pause.png"
                        property string pauseButtonRelease:"Image/play.png"
                        id: pauseButton
                        x: recRightProgramMedia.width*5.8/12
                        y:-10
                        source: pauseButtonRelease
                        width:recRightProgramMedia.width/12
                        height:50
                        MouseArea{
                            id:pauseButtonControl
                            anchors.fill: parent
                            implicitWidth: pauseButton.width
                            implicitHeight: pauseButton.height
                            onPressed: {
                                pauseButton.source = pauseButton.pauseButtonPress
                                console.log("pauseButton on press")
                            }
                            onReleased: {
                                pauseButton.source = pauseButton.pauseButtonRelease
                                console.log("pauseButton on release")
                            }
                        }

                    }
                    //possiton of next button ------->events
                    Image{
                        property string  nextButtonPress: "Image/hold-next.png"
                        property string  nextButtonrelease:"Image/next.png"
                        id: nextButton
                        x: recRightProgramMedia.width*6.8/12
                        source: nextButtonrelease
                        width:recRightProgramMedia.width*0.5/12
                        height:30
                        MouseArea{
                            id:nextButtonControl
                            anchors.fill: parent
                            implicitWidth: nextButton.width
                            implicitHeight: nextButton.height
                            onPressed: {
                                nextButton.source = nextButton.nextButtonPress
                                console.log("nextButton on press")
                            }
                            onReleased: {
                                nextButton.source = nextButton.nextButtonrelease
                                console.log("nextButton on release")
                            }

                        }
                    }
                    // position of repeat button--------->events
                    Image{
                        property string repeatButtonPress: "Image/repeat1_hold.png"
                        property string repeatButtonRelease:"Image/repeat.png"
                        id: repeatButton
                        x: recRightProgramMedia.width*10.5/12
                        source: repeatButtonRelease
                        width:30
                        height:30
                        MouseArea{
                            id:repeatButtonControl
                            anchors.fill: parent
                            implicitWidth: repeatButton.width
                            implicitHeight: repeatButton.height
                            onPressed: {
                                repeatButton.source = repeatButton.repeatButtonPress
                                console.log("repeatButton on press")
                            }
                            onReleased: {
                                repeatButton.source = repeatButton.repeatButtonRelease
                                console.log("repeatButton on release")
                            }
                        }
                    }
                }
            }

        }

    }
}
