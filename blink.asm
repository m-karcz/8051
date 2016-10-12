sjmp INIT

INIT: setb P1.0
      sjmp MAIN

MAIN: cpl P1.0;     Blinking diode with 1Hz PWM 50%
      acall LOOP
      sjmp MAIN

LOOP: mov R2, #0DAh
WAIT1: mov R3, #0FFh
WAIT2: mov R4, #03h
WAIT3: djnz R4, WAIT3
       djnz R3, WAIT2
       djnz R2, WAIT1
       ret
        
