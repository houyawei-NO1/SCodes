import QtQuick 2.12
import QtQuick.Controls 2.12
import QtMultimedia 5.12
import com.scythestudio.scodes 1.0

ApplicationWindow {
  id: root
  visible: true
  width: Qt.platform.os == "android"
         || Qt.platform.os == "ios" ? Screen.width : camera.viewfinder.resolution.width
  height: Qt.platform.os == "android"
          || Qt.platform.os == "ios" ? Screen.height : camera.viewfinder.resolution.height

  Camera {
    id: camera
    focus {
      focusMode: CameraFocus.FocusContinuous
      focusPointMode: CameraFocus.FocusPointAuto
    }
  }

  VideoOutput {
    id: videoOutput
    source: camera
    anchors.fill: parent
    autoOrientation: true
    fillMode: VideoOutput.PreserveAspectCrop
    // add barcodeFilter to videoOutput's filters to enable catching barcodes
    filters: [barcodeFilter]

    onSourceRectChanged: {
      barcodeFilter.captureRect = videoOutput.mapRectToSource(
            videoOutput.mapNormalizedRectToItem(Qt.rect(0.2, 0, 0.5, 1)))
    }

    ScannerOverlay {
      id: scannerOverlay
      anchors.fill: parent

      captureRect: videoOutput.mapRectToItem(barcodeFilter.captureRect)
    }

    // used to get camera focus on touched point
    MouseArea {
      anchors.fill: parent
      onClicked: {

        camera.focus.customFocusPoint = Qt.point(mouse.x / width,
                                                 mouse.y / height)
        camera.focus.focusMode = CameraFocus.FocusMacro
        camera.focus.focusPointMode = CameraFocus.FocusPointCustom
      }
    }
  }

  SBarcodeFilter {
    id: barcodeFilter

    // you can adjust capture rect (scan area) ne changing these Qt.rect() parameters
    captureRect: videoOutput.mapRectToSource(
                   videoOutput.mapNormalizedRectToItem(Qt.rect(0.2, 0, 0.5, 1)))

    onCapturedChanged: {
      active = false
      console.log("captured: " + captured)
      image.reloadImage()
    }
  }

  Rectangle {
    anchors.fill: parent
    visible: !barcodeFilter.active
    Column {
      anchors.centerIn: parent
      spacing: 20



      TextInput {
        id:text_deviceid
        anchors.horizontalCenter: parent.horizontalCenter
        text:  barcodeFilter.captured
        font.pixelSize: 30
        readOnly: true

      }

      Image {
            id:image
            cache: false
            source: "file:///storage/emulated/0/Pictures/qr.jpg"
            anchors.horizontalCenter: parent.horizontalCenter
            function reloadImage() {
                                var oldSource = source
                                source = ""
                                source = oldSource
                            }//function to refresh the source
        }


      Button {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "<font color='#218165'>" + "复制设备号"+ "</font>"
        font.pixelSize: 45
        onClicked: {
          text_deviceid.select(23,13)
          text_deviceid.copy()
        }
      }
      Button {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "<font color='#218165'>" + "扫描下一个二维码"+ "</font>"
        font.pixelSize: 45

        onClicked: {
          barcodeFilter.active = true

        }
      }
    }
  }
}

