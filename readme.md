## CS-64180 MINI MICRO

Github repo for documenting and exploring a mystery microcontroller PCB I found in a junk pile. Age is early 1990's at a guess.

Based on the hitachi HD64180 (https://en.wikipedia.org/wiki/Hitachi_HD64180, the precursor to the Zilog Z180 CPU) with 8k ROM, 8K RAM and a serial port, this mystery board deserves some exploration!

ROM Dumps don't appear to contain any useful text such as a copyright statement or manufacturer name. Unit is unlabelled. found in Adelaide, South Australia, so most likely designed and built in Australia.

The board has an onboard 7805 power regulator, so runs from a single supply. It uses DS1488/89 serial line drivers which usually need + and - supply of 3 to 2v DC to generate correct RS-232 voltage levels, so not sure how that is being handled.

I'm going to attempt to reverse engineer at least a partial schematic as I get time.

The board also has a dallas DS1231 power monitor watchdog/CPU reset controller and what appears to be 2 buffered 8-bit ports (not sure if Input or outpout) based on 74HCT245 chips.

There is also a bunch of hand made peripheral boards (RS-422 interface, front panel display board with 3 x 7 Seg dispalys and some switches), but also an apparently off the shelf IO board labelled as made by By Monash University, dated 1988. Monash University is based in Melbourne, Australia -- https://www.monash.edu/

ROM Dump & basic disaseembly posted. The device appears to be a signal processor/monitor with display and serial output. it does nothing on the displays or srial port when powered on without any inputs.

![Device Image](https://github.com/1971Merlin/CS-64180/blob/main/20220821_105245.jpg)
