from pypresence import Presence as presence
import os
import random
import time
from pathlib import Path

CLIENT_ID = "1456540188749729893"
STATUS_FILE = Path.home() / ".presence_status"

# defaults for each field: [details, state, large_image, large_text]
combo=[["Asking chat gpt why...","...your mom is fat","...","chatgpt"," you just want attention,you dont want my heart?💔"],
       ["Coding...","...random BS","idk why every 10s this changes?","terminal","fking gnome terminal icon"],
       ["Listening to...","...candy stuff..","why i cant leave this empty??","spotify","if you are reading this.. then u'r gay"],
       ["Actually doing something...","...useless","wth","leetcode","not leet code icon"],
       ["Nvim...","...editing your mom","just kiding","nvim","iloveyou:)"],
       ]
random_hearts=["❤️","🧡","💛","💚","💔"]

rpc = presence(CLIENT_ID)
rpc.connect()

digits = random.sample(range(len(combo)), len(combo))
count=0
print ("lets get started!")
while True:
    values=["","","","",""]
    if count>=len(combo) : 
        count=0
        digits = random.sample(range(len(combo)), len(combo))
        os.system("cls" if os.name == "nt" else "clear")

    if STATUS_FILE.exists():
        file=STATUS_FILE.read_text().splitlines()
        for i in range(len(file)):
            values[i]=file[i]
    else:
        f=Path(STATUS_FILE)
        f.write_text("default")

    if values[0]=="default":
        rpc.update(
            name        = combo[digits[count]][0],
            details     = combo[digits[count]][1],
            state       = combo[digits[count]][2], 
            large_image = combo[digits[count]][3],
            large_text  = combo[digits[count]][4],
        )                                          
        print(f"getin' combo {digits[count]+1}")
        count+=1
    elif values[0]=="heart":
        rpc.update(
            name        = random_hearts[digits[0]],
            details     = random_hearts[digits[1]],
            state       = random_hearts[digits[2]], 
            large_image = random_hearts[digits[3]],
            large_text  = random_hearts[digits[4]],
        )                                          
        count+=1
    else:
        rpc.update(
            name        = values[0] if values[0] else "debugging myself",  
            details     = values[1] if values[1] else "testing this shit", 
            state       = values[2] if values[2] else "why tf this isnt working?",  
            large_image = values[3] if values[3] else "terminal", 
            large_text  = values[4] if values[4] else "this is defalut option so...", 
        )                                          
        print("using file's values")
    time.sleep(10)
