import Quickshell.Services.Greetd
import Quickshell
import QtQuick

Singleton{
  Timer{
    id:sessionStarter
    interval:200
    repeate:true
    onTriggered{
      if(Greetd.state!== GreetdState.Inactive){
        return;
      }
      //TODO:log info
      Greetd.createSession(/*TODO: add user*/);
    }
  }
}
