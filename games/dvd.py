import curses
BORDER_STYLES = {
    "thin":  {"tl": '┌', "tr": '┐', "bl": '└', "br": '┘', "h": '─', "v": '│'},
    "thick": {"tl": '┏', "tr": '┓', "bl": '┗', "br": '┛', "h": '━', "v": '┃'},
    "double":{"tl": '╔', "tr": '╗', "bl": '╚', "br": '╝', "h": '═', "v": '║'},
    "ascii": {"tl": '+', "tr": '+', "bl": '+', "br": '+', "h": '-', "v": '|'}
}
INTERSECTION_STYLES = {
    "thin":  {"tu":'┴',"td":'┬',"tl":'┤',"tr":'├',"cross": '┼'},
    "thick": {"tu":'┻',"td":'┳',"tl":'┫',"tr":'┣',"cross": '╋'},
    "double":{"tu":'╩',"td":'╦',"tl":'╣',"tr":'╠',"cross": '╬'}
}
class VScreen:
    def __init__(self):
        self.width = 0
        self.height = 0
        self.update()
    def update(self):
        if(self.width!=curses.COLS or self.height!=curses.LINES):
            self.width=curses.COLS
            self.height=curses.LINES
            self.grid=[
                [' 'for _ in range(self.width)]
                for _ in range(self.height)
            ]
            self.prev_grid=[
                [' 'for _ in range(self.width)]
                for _ in range(self.height)
            ]
            self.changed_rows=set(range(self.height));
    def setChar(self,x,y,C):
        if (0<=y<self.height and 0<=x<self.width 
            and self.grid[y][x]!=C):
            self.grid[y][x]=C
            self.changed_rows.add(y)
    def setBlock(self,sX,sY,eX,eY,C):
        if(sX>eX):sX,eX=eX,sX
        if(sY>eY):sY,eY=eY,sY
        sX = max(0, min(sX, self.width - 1))
        eX = max(0, min(eX, self.width - 1))+1
        sY = max(0, min(sY, self.height - 1))
        eY = max(0, min(eY, self.height - 1))+1
        data=list(C*(eX-sX))
        self.changed_rows.update(range(sY,eY))
        for row in self.grid[sY:eY]:
            row[sX:eX]=data
    def setString(self,x,y,s):
        if not(0<=y<self.height):return
        space=self.width-x
        if(space<=0):return
        cur=s[:space]
        size=len(cur);
        self.grid[y][x:x+size]=list(cur);
        self.changed_rows.add(y)

    def render(self,stdscr):
        for y in self.changed_rows:
            for x in range(self.width):
                new=self.grid[y][x]
                prev=self.prev_grid[y][x]
                if (new!=prev):
                    try:
                        stdscr.addstr(y,x,new)
                        self.prev_grid[y][x]=new
                    except curses.error:
                        pass
        self.changed_rows.clear()
        stdscr.refresh()
    def drawBox(self,sX=0,sY=0,eX=None,eY=None,
        config=BORDER_STYLES["thin"]):
        if eX is None:eX=self.width -1
        if eY is None:eY=self.height-1
        if(sX>eX):sX,eX=eX,sX
        if(sY>eY):sY,eY=eY,sY
        sX = max(0, min(sX, self.width - 1))
        eX = max(0, min(eX, self.width - 1))
        sY = max(0, min(sY, self.height - 1))
        eY = max(0, min(eY, self.height - 1))
        self.setChar(sX,sY,config["tl"])
        self.setChar(sX,eY,config["bl"])
        self.setChar(eX,sY,config["tr"])
        self.setChar(eX,eY,config["br"])
        self.setBlock(sX+1,sY,eX-1,sY,config["h"])
        self.setBlock(eX,eY-1,eX,sY+1,config["v"])
        self.setBlock(sX,sY+1,sX,eY-1,config["v"])
        self.setBlock(eX-1,eY,sX+1,eY,config["h"])
class Object:
    def __init__(self,x,y,vx,vy,shape=["█"]):
        self.x=x
        self.y=y
        self.vx=vx
        self.vy=vy
        self.shape=shape
    def update(self,vscreen):
        self.x=max(0,min(self.x+self.vx,vscreen.width));
        self.y=max(0,min(self.x+self.vy,vscreen.height));
def main(stdscr):
    vscreen=VScreen()
    vscreen.update()
    vscreen.drawBox(config=BORDER_STYLES["double"])

    curses.curs_set(0) 
    stdscr.nodelay(True)
    stdscr.timeout(100)
    player=Object()
    directions=[
        [0,1,0,-1],
        [1,0,-1,0]
    ]
    while 1:
        if curses.is_term_resized(vscreen.height, vscreen.width):
            curses.update_lines_cols()
            vscreen.update()
        key = stdscr.getch()
        if key == ord('q'):
            break
        vscreen.render(stdscr)
curses.wrapper(main)
# ASCII code 176 = ░ 
# ASCII code 177 = ▒ 
# ASCII code 178 = ▓ 
# ASCII code 219 = █ 
# ASCII code 220 = ▄ 
# ASCII code 223 = ▀ 
# ASCII code 254 = ■ 
