#  Analog Mixed-Signal (AMS) Design
Welcome to the SiliconJackets AMS team!

AMS covers a wide range of circuits and systems but fundamentally is about transistor level ASIC design. Example design projects include data converters, clock generation, power regulation, and custom digital circuits. While this is a design team, members also do their own verification and layout. 

## Onboarding

For the onboarding project, you will learn the basics of designing, verifying, and laying out a circuit in Cadence Virtuoso. The software and design may be unfamiliar, and we encourage you to read and ask questions about any of the material. Some reference papers and links are included in the references folder. 

In this project you will 
1. Design a ring oscillator that meets the below specs
2. Simulate your design to verify correct operation
3. Layout your design and ensure it passes design rules (DRC) and matches the schematic (LVS)
4. Compile steps 1-3 into a legible design review document

### Specifications

| Name| Min | Max | Unit
|-------|-----|-----------|-----|
| VDD | -- | 1.8 | V |
| GND | -- | 0 | V |
| Oscillator Power | -- | 500 | uW |
| Cload | -- | 1  | pF |
|$f_{osc}$ | 450 | 550 | MHz |
| $t_r/t_f$ (10% -> 90%) | -- | 250 | pS |
| Duty Cycle | 40 | 60 | % |
| Vmin | 0 | 0.1 | V |
| Vmax | 1.7 | 1.8 | V |
|Temperature| 0 | 70| C

You may use one ideal current source to generate biases for your design, an ideal voltage source for VDD, and an ideal capacitor for the 1 pF load. All other components should be from the PDK or used for simulation-only (such as a 0V voltage source to measure current).

Design should meet these specs at the typical (tt) corner. Also simulate your design over the fast (ff) and slow (ss) corner, but you do not have to meet these specs.

Example Testbench:
<img width="1663" height="723" alt="TB" src="https://github.gatech.edu/user-attachments/assets/b865fcbf-bb2f-45ef-acd9-7e7694995fe5" />



## Onboarding Delivery

Once you have completed and verified your design, you will deliver a design review slide containing 

1. Design analysis (equations, reasoning for design choice, etc...)
2. Design schematics
3. Simulations verifying your design meets specs
    - Oscillation waveforms @27 degrees C
    - Oscillation frequency over temperature
    - Variation over corners
    - Average power draw (exclude buffer)
    - ...
 4. Picture of your layout
 5. DRC/LVS reports indicating you passed checks

Clearly show that you passed all specs! Clarity of your report is important. 

## FAQ

1. Do I need to lay out the load capacitor?
    No, the load capacitor can just be in simulation
2. Do I need to consider the buffer power?
    No, the given spec is only for the power of the core oscillator
3. My oscillator isn't oscillating?
    Make sure you are starting the simulation correctly to "kick" the circuit into an unstable state
4. My capacitors don't pass LVS?
    There's a known error with capacitors and LVS with this PDK. If you use capacitors, don't lay them out and use another version of your schematic that doesn't have them to pass LVS. 


## Reference materials
See the reference folder for instructions on cloning this repo and launching Virtuoso (references/Getting_Started.pdf). Also see helpful papers. Please also see the AMS-Custom-Design repo for the Sky130nm PDKsetup and attend the AMS lectures. Also see the following links.

- [Baker Ring Oscillator Simulation Tutorial](https://cmosedu.com/jbaker/courses/ee421L/f14/students/ibanezv/lab7/lab7.htm)
- 

