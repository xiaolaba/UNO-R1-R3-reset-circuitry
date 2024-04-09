set ac=C:\avr8-gnu-toolchain-win32_x86

path %ac%\bin;%ac%\utils\bin;%path%;

::avr-gcc.exe -dumpversion


avrdude -v -p atmega328p -c arduino -P COM8 -b 115200 -D -Uflash:w:328p.hex:a


pause

