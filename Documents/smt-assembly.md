# SMT Assembly
I highly recommend assembling this board using solder paste, a stencil, and a reflow oven.

- Gerbers can be found in `Hardware/0.3/gerbers/pcb.zip`, with the stencil located at `Hardware/0.3/gerbers/stencil.zip`. 
- Most PCB fabricators allow you to generate the stencil during the uploading of the PCB, however I suggest uploading the paste layer separately as this reduces the likelihood they change the stencil apertures, which have been fine tuned for this board. 
- The Bill of materials can be found in `Hardware/0.3/bom/BOM.csv`, and contains part numbers for all but passive components.
- The "Human PnP" file can be found in `Hardware/0.3/bom/assembly.html`, and is a major help in ensuring all parts are sourced before assembly, along with making locating the positions of each component much easier. Don't be concerned if not every pad has a part on it, there are a few DNP components which have footprints but are not placed during assembly. 
- One thing to keep an eye out for is that the WS2812 LEDs corner marking is NOT pin 1, so ensure you line it up with the square corner of the silkscreen, not the pin 1 marker.

if there are any issues with sourcing / assembly / bringup please get in touch, I'm more than happy to help get your board working. 
