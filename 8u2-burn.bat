:: 2020-SEP-09, build 7-seg LCD + ATmega168P, test ok
:: 2020-SEP-14, try picoboot, picobootArduino168v3b2.hex
:: https://github.com/nerdralph/picoboot/tree/master/arduino

@echo off

set mcu=atmega8u2
::set hex=Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
::set hex=Genuino-COMBINED-dfu-usbserial-atmega16u2-Uno-R3.hex
::set hex=Arduino-usbserial-atmega16u2-Uno-Rev3.hex
::set hex=Arduino-usbserial-uno.hex
::set hex=UNO-dfu_and_usbserial_combined.hex
::set hex=Genuino-usbserial-atmega16u2-Uno-R3.hex
set hex=Arduino-usbserial-atmega8u2-Uno-Rev1-PID_0x0001-xiaolaba.hex
::set hex=16u2.hex
::set hex=Arduino-usbmidi.hex
::set hex=8u2_mega2560.hex



:: Atmega8u2, UNO, serial chip
set lfuse=0xFF
set hfuse=0xd9
set efuse=0xf4
set lock=0x0F



::set ac=C:\WinAVR-20100110
:: 2020-09-07, download avr-gcc 3.6 from Microchip
set ac=C:\avr8-gnu-toolchain-win32_x86

path %ac%\bin;%ac%\utils\bin;%path%;

avr-gcc.exe -dumpversion

:::: burn hex
avrdude -c usbtiny -p %mcu% -U flash:w:%hex%:a -U lfuse:w:%lfuse%:m  -U hfuse:w:%hfuse%:m -U lock:w:%lock%:m

::avrdude -c usbtiny -p %mcu% -U flash:w:%hex%:a

:::: avrdude terminal only
::avrdude -c usbtiny -p %mcu% -t

pause
:end