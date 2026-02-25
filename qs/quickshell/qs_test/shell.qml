import Quickshell
import Quickshell.Wayland
import QtQuick

WlSessionLock{
  id:lock
  locked:true
  WlSessionLockSurface {
    Rectangle {
      color: "black"
      anchors.fill: parent
      // Add your password field / clock / UI here
      Text {
        text: "Locked"
        color: "white"
        anchors.centerIn: parent
      }
    }
  }
}
