# Problem A

- this problem only requires some research
     + **1936 :** The birth of programmable general purpose computer
     + **1947 :** The birth of solid state transistor
     + **1958 :** The birth of integrated circuit (ic)
     + **1969 :** The births of ARPANET(internet precursor),UNIX os. The first successful moon landing misson
     + **1981 :** The shift to personal computer
     + **1991 :** The launch of world wide web (www) and linux kernel
     + **2000 :** The y2k bug and the peak of '.com' bubble
     + **2007 :** The launch of iphone
     + **2012 :** the turning point for artificial intelligence
     + **2022 :** the launch of generative AI (chatGPT)

---
# Problem C

- **( a ) :**
     + Given: $T_0=2300$ and $t=2026-1971=55$ .
     + We get:$T(55)=2300*2^{55/2}\approx 436\,568\,821\,871$

- **( b ) :**
     + Moore's law predicted $\sim 440B$ transistors
     + While Apple M5 Max only has $\sim 30B$ transistors
     + Conclusion: Moore's law no longer hold up after 55 years

- **( c ) :**
     + Let $x$ be the doubling period
     + Assumping: $T(55)=30*10^9$
     + We get: $30*10^9=2300*2^{55/x}$
     
     + Divide both sides by 2300: $\frac{30*10^6}{2300}=2^{55/x}$
    + Take $log_2$ of both sides: $log_2(\frac{30*10^9}{2300})=\frac{55}{x}$
    + We have $x=\frac{55}{log_2(\frac{30*10^9}{2300})}\approx2.32(years)$ 

    + the best doubling period that fit the growth from the intel 4004 is 2.32 years.
---
# Problem D

- **( a ) :**
    + Firstly, the given code doesnt process all the events in that one frame ,because of the break scope.
    + Secontly, also due to that break scope, the code doesnt process to the last frame.

---
# Problem E

- **( a ) :**
    + the damping factor ($d=0.85$) represents random-surfer interpretation (modeling a web surfer):
        + 85%: people will continue following links.
        + 15%: people search other website using the search bar.
    + the first $\frac{1-d}{N}$ represent the base rank accross all $N$ pages.
    + it is recursive because a website rank is based on another one linking to it,which in turn depend on other pages.
    + the sigma block ensure every pages linking to this one is calculated.
    + basically, ranking is based on the sum of base rank and all the rank of webs linking to the current one.

- i dont realy know how to solve **b** and **c**
