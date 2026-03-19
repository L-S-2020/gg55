# GG55 - a self-made game console

<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/gg55.jpeg?raw=true" alt="the console" width="400"/>

This is a game console I build as a gift for the 18th birthday of a friend, originally as hardware to play [Smash Simon](https://github.com/L-S-2020/smash-simon) a game I've made together with some friends, but it can do way more ;).
It was build from an old laptop with a custom designed case und runs Batocera, an linux based emulation OS [(batocera.org)](https://batocera.org/).
You can find it cad design of the case on onshape: https://cad.onshape.com/documents/7560239f6fe17c7d4cf64598/w/8a47a09bccb38b5e09941efb/e/0df3d87badd881ae933a3c0b?renderMode=0&uiState=69bc1c57a74a9b97d9475947

# Features
- Runs Batocera (you can play many kinds of games)
- Wifi
- HDMI output
- Plays Crunchyroll and Netflix (using Chrome kiosk mode)
- plenty of usb ports :) (6 on the front + 1 in back (used by the wifi adapter))
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/io-1.jpg?raw=true" alt="io" width="500"/>

# Parts
- old laptop (I used an old Lenovo G710 I had laying around)
- [Sata 22pin extension cable](https://www.amazon.de/dp/B07NSMDSV4) (to fit the harddrive in the top of the case)
- [2 mini usb hubs](https://www.amazon.de/dp/B0CJ2K8SWZ) (to have enough ports for 4 controllers)
- [Usb wifi adapter](https://www.amazon.de/dp/B008IFXQFU) (the original was not supported by batocera and didn't fit in case)

# Building log
I started by disasembling the laptop and taking out the mainboard and the other, for the project useful, components, like the power connector and the usb ports extension.
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/laptop-open-1.jpg?raw=true" alt="laptop" width="500"/> <img src="https://github.com/L-S-2020/gg55/blob/main/pictures/mainboard-bottom.jpg?raw=true" alt="laptop" width="500"/>


I then carefully put the mainboard down on some standofs of antistatic foam, I had laying around from the packaging of the rp2040s of my [makroboard christmas gift project](https://github.com/L-S-2020/leoboard), and tested the functionality using an external display and an usb stick with batocera on it. The system booted normally, so I started to take the measurements for the case design. 
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/mainboard-running.jpg?raw=true" alt="laptop" width="500"/>

As the ram and cpu cooler were on the bottom of the mainboard, I had to design standoffs to support the board in the case.
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/cad-explained.jpg?raw=true" alt="laptop" width="500"/>

For simplifying these and for visualising the measurements, I put an image of the board as background of the sketch.
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/sketch.png?raw=true" alt="laptop" width="500"/>
I also added plenty of holes for airflow to keep the system cool and an engraved text on the front.
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/cad-case-top.jpg?raw=true" alt="laptop" width="500"/>
To be able to power the thing on, I recycled the original powerbutton by just making a hole in the top part and hot glueing the original button with its pcb under it.

As I was limited by the maximum printsize of the 3d printer I was using, I had to put the harddrive above the board, so I just put in under the top part of the case.
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/storage.jpg?raw=true" alt="harddrive" width="500"/>


For the power plug I designed a little standoff on the wall inside the case to mount it.
I then assembled everything using plenty of hot glue ;) .
<img src="https://github.com/L-S-2020/gg55/blob/main/pictures/assembling.png?raw=true" alt="harddrive" width="500"/>
To get enough air to the bottom intake holes, I reused the rubber feets from the laptop case and just hot glued them to the bottom, then I installed batocera and set everything up.


The reaction on the party was really nice, we directly made a little gaming tournament ;).
##
If someone has any thoughts, ideas or questions regarding the project, feel free to open an issue.

Big thanks to [@SillyGoose123](https://github.com/SillyGoose123) for letting me use his 3d printer.


