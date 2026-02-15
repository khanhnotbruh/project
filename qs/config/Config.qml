import QtQuick
import Quickshell
import Quickshell.Io
//we dont need import .

Singleton{
  id:root
  property bool recentlySaved:false
  /*-------------------- opening config file ------------------------------*/
  FileView{
    id:configFile
    path:`${Paths.config}/shell.json`
    blockLoading:true
    watchChanges:true
    onFileChanged:{
      if(!recentlySaved){
        timer.restart();
        configFile.reload();
      }else{
        configFile.reload();
      }
    }
    onLoaded:{
      try{
        JSON.parse(configFile.text());
        const elapsed=timer.elapsedMS();
        //todo: notify how long did this take to set up
      }catch(e){
        console.error("failed to load config file!")
      }
    }
    onLoadedFailed:err=>{
      if(err==FileViewError.FileNotFound){
        console.warn("config file not found")
      }else{
        console.error("unable to read config file")
      }
    }
    onSavedFailed:err=>console.error("unable to save config!")
    //getting var from config files//
    JsonAdapter{
      id:adapter
      property JsonObject appearance:AppearanceConfig{}
      property JsonObject border:BorderConfig{}
    }
  }

  /*-------------------- syncing config ------------------------------*/
  //creating alias
  property alias appearance:adapter.appearance 
  property alias border:adapter.border

  //function for syncing
  function syncAppearance():var{
    return {
      rounding: {
        scale: appearance.rounding.scale
      },
      spacing: {
        scale: appearance.spacing.scale
      },
      padding: {
        scale: appearance.padding.scale
      },
      font: {
        family: {
          sans: appearance.font.family.sans,
          mono: appearance.font.family.mono,
          material: appearance.font.family.material,
          clock: appearance.font.family.clock
        },
        size: {
          scale: appearance.font.size.scale
        }
      },
      transparency: {
        enabled: appearance.transparency.enabled,
        base: appearance.transparency.base,
        layers: appearance.transparency.layers
      },
    };
  }
  function syncBorder(): var {
    return {
      thickness: border.thickness,
      rounding: border.rounding,
      color:border.color
    };
  }
  //helper
  function syncConfig():var{
    return{
      appearance:syncAppearance(),
      border:    syncBorder(),
    }
  }
  /*-------------------- auto save timer ------------------------------*/
  ElapsedTimer {id: timer}
  //timer for auto-saving
  Timer{
    id:saveTimer
    interval:500
    onTriggered{
      saveTimer.restart();
      try{
        let config={}
        try{
          config=JSON.parse(configFile.text());
        }catch(e){
          console.warn("failed to parse config");
          config={};
        }
        //sync config with current value
        config=syncConfig();

        //reformat the config file 
        configFile.setText(JSON.stringify(config, null, 2));
      }catch(e){
        console.error("failed to sync config")
      }
    }
  }
  // after 2 sec is not recently saved
  Timer{
    id:recentlySavedCD
    interval:2000
    onTriggered{
      recentlySaved=false;
    }
  }

  //function for saving to file
  function save():void{
    saveTimer.restart();
    recentlySaved=true;
    recentlySavedCD.restart();
  }
}
