import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Shapes
import QtQuick.Effects
import "../../config"

PanelWindow {
    id: root

    WlrLayershell.layer: WlrLayer.Top
    exclusiveZone: -1
    focusable: false
    implicitHeight: Screen.height / 3
    property bool showing: false
    property int curTab: 0
    property int startX:(Screen.width/3)-rounding
    property int startY:Config.border.thickness*1.0
    property int boardHeight:Screen.height / 3
    property int boardWidth:Screen.width/3
    property int rounding:Config.dashboard.rounding
    property color boardColor:Config.border.color
    color:"transparent"
    anchors {
        left: true
        top: true
        right: true
    }
    margins {
        left: Screen.width / 4
        right: Screen.width / 4
    }
    Shape{
      id:visualContent
      layer.enabled:true
      layer.samples:4
      ShapePath{
        startX:root.startX
        startY:root.startY
        fillColor:root.boardColor
        strokeColor:"transparent"
        strokeWidth:-1
        PathArc{
          relativeX:root.rounding
          relativeY:root.rounding
          radiusX:root.rounding
          radiusY:root.rounding
          direction:PathArc.Counterclockwise
        }
      }
    }
}
