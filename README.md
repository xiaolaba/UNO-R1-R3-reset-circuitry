# UNO-R1-R3-reset-circuitry
Arduino clone broad, UNO not be able to download ? missing the DTR reset  
this is not good design anyway  

DTR provide reset signal, it is likely a charge pump circuit to the rest pin of Mega328 MCU  
UNO R.1, and UNO R.3, the RESET circuit via pullup 10K resistor and adding a diode to protect 328P, it is saying the malfunction and reliability had been compromised on UNO R.1
![hack/UNO_R3_R1.JPG](hack/UNO_R3_R1.JPG)


how to upgrade 8u2/16u2 firmware and why  
```https://docs.arduino.cc/retired/hacking/software/DFUProgramming8U2/```  
firmware  
```https://github.com/arduino/ArduinoCore-avr/tree/master/firmwares/atmegaxxu2```  