pragma singleton
import Quickshell.Io
JsonObject {
  property Color color:Color{}


  property Color:JsonObject{
    /* base */
    property color bg: "#282828"
    property color fg: "#ebdbb2"
    property color gray: "#928374"

    /* accents */
    property color red: "#fb4934"
    property color green: "#b8bb26"
    property color yellow: "#fabd2f"
    property color blue: "#83a598"
    property color purple: "#d3869b"
    property color aqua: "#8ec07c"
    property color orange: "#fe8019"

    /* background scale */
    property color bg0_h: "#1d2021"
    property color bg0:   "#282828"
    property color bg1:   "#3c3836"
    property color bg2:   "#504945"
    property color bg3:   "#665c54"
    property color bg4:   "#7c6f64"

    /* foreground scale */
    property color fg0: "#fbf1c7"
    property color fg1: "#ebdbb2"
    property color fg2: "#d5c4a1"
    property color fg3: "#bdae93"
    property color fg4: "#a89984"
  }
}
