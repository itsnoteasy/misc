the io3360 zip is a through hole pcb and instructions designed in fritzing to convert the intellimouse optical 1.1 and wheel mouse optical to a pmw3360 by using the jkicklighter board on tindie and a teensy 2.0. It works fine as my daily driver although all it does is add weight. If you wanted to use the files a lighter approach would be to cut off the pcb in fritzing and add in wire holes, like how the ninox classic intellimouse is done on youtube.

The buttons folder is a cut off version of the smt pcb for those who want a light weight through hole build. There are pads for optional 1206 size pullups. I haven't tested it but it's probably ok, and you can order it from the cheaper pcb companies as it was completed in kicad, so has no errors.

the mouse8 folder is a work in progress similar project in kicad 6.0 nightly build using all surface mount parts, aiming for a lighter weight and lower cost. I uploaded the files so interested parties could submit bugfixes and comments. as of yet there are no successful builds, due to slow shipping times and tight budgets on my end. 

The gerbers are complete, although I am still finding critical errors on a weekly basis. the 3360 footprint is proprietary so I could not release it. it is freely available if hunted down though, as are the microswitch and ec10 footprints. 
if anyone cares to make a libre one I will add it here.

I moved the sensor forward for this build, only time will tell if that was the right decision. It is still possible to move it farther with a redesign, although I did not want to change it too much.

The pullup resistors are optional, a pair of 1206 size 10k is recommended for the wheel and a pair of 5k for each microswitch. I recommend not using an ultrabright led as it will exceed the safe average current limits of the mcu pin driving it. it is there merely as a power on indicator.

I am aware the schematic symbol pinout for the pmw3360 is in a different order to the chip, but the pins themselves are correct.

footprints are the property of their respective creators, can be sourced here:

https://www.overclock.net/forum/375-mice/1724838-progress-fully-custom-mouse-2.html#post27945424

https://www.overclock.net/forum/375-mice/1635281-new-ninox-mouse-ninox-astrum-swapable-shells-195.html#post27920712

mouse8onethree is an untested reworking of the mouse8 pcb to fit the ergo intellimouse1.3a shell, wmo and io1.1. It also adds a jumbled isp header. b1, b2, b3 are connected to a pair of through holes and can be jumpered over once the bootloader is programmed. 
ISP guide is here:

https://github.com/qmk/qmk_firmware/blob/master/docs/isp_flashing_guide.md
