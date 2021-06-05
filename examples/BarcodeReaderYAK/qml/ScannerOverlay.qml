 import QtQuick 2.12
import QtGraphicalEffects 1.12


Item {
  id: root

  property rect captureRect

  Item {
    id: captureZoneCorners
    x: root.captureRect.x
    y: root.captureRect.y
    width: root.captureRect.width
    height: root.captureRect.height

    Rectangle {
      anchors {
        top: parent.top
        left: parent.left
      }

      width: 120
      height: 10
      color: "#218165"
      radius: height / 2
    }

    Rectangle {
      anchors {
        top: parent.top
        left: parent.left
      }

      width: 5
      height: 120
      color: "#218165"
      radius: width / 2
    }

    // ----------------------
    Rectangle {
      anchors {
        bottom: parent.bottom
        left: parent.left
      }

      width: 120
      height: 10
      color: "#218165"
      radius: height / 2
    }

    Rectangle {
      anchors {
        bottom: parent.bottom
        left: parent.left
      }

      width: 5
      height: 120
      color: "#218165"
      radius: width / 2
    }

    // ----------------------
    Rectangle {
      anchors {
        top: parent.top
        right: parent.right
      }

      width: 120
      height: 10
      color: "#218165"
      radius: height / 2
    }

    Rectangle {
      anchors {
        top: parent.top
        right: parent.right
      }

      width: 5
      height: 120
      color: "#218165"
      radius: width / 2
    }

    // ----------------------
    Rectangle {
      anchors {
        bottom: parent.bottom
        right: parent.right
      }

      width: 120
      height: 10
      color: "#218165"
      radius: height / 2
    }

    Rectangle {
      anchors {
        bottom: parent.bottom
        right: parent.right
      }

      width: 5
      height: 120
      color: "#218165"
      radius: width / 2
    }

    Rectangle {
      id: scanIndicator

      y: captureZoneCorners.height / 2

      anchors {
        horizontalCenter: parent.horizontalCenter
      }

      width: parent.width
      height: 1

      color: "#218165"

      SequentialAnimation {
        id: scanIndicatorAnimation
        loops: Animation.Infinite

        PropertyAnimation {
          id: toTopAnimation
          target: scanIndicator
          property: "y"
          duration: 2000
        }

        PropertyAnimation {
          id: toBottomAnimation
          target: scanIndicator
          property: "y"
          duration: 2000
        }
      }
    }

    RectangularGlow {
        id: effect

        anchors.centerIn: scanIndicator

        width: scanIndicator.width
        height: scanIndicator.height

        glowRadius: 50
        spread: 0.2
        color: "#218165"
        cornerRadius: glowRadius
    }
  }

  Text {
    id: scanCapsuleText

    anchors {
      verticalCenter: captureZoneCorners.bottom
      horizontalCenter: captureZoneCorners.horizontalCenter
    }

    text: qsTr("扫描盒子背部二维码")
    color: "#218165"
    font.pixelSize: 20
  }

  onCaptureRectChanged: {
    toTopAnimation.to = 5
    toBottomAnimation.to = captureRect.height - 5
    scanIndicatorAnimation.start()
  }
}
