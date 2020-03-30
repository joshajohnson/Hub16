# SMT Assembly
I highly recommend assembling this board using solder paste, a stencil, and a reflow oven.

- Gerbers can be found in `Hardware/0.5/assembly/gerbers.zip`, with the stencil located at `Hardware/0.5/assembly/stencil.zip`. 
- Most PCB fabricators allow you to generate the stencil during the uploading of the PCB, however I suggest uploading the paste layer separately as this reduces the likelihood they change the stencil apertures, which have been fine tuned for this board. 
- The Bill of materials can be found in `Hardware/0.5/assembly/BOM.csv`, and contains manufacturer part numbers, along with distributor specific codes for for Digikey and LCSC. All components can be sourced from LCSC, with the USB connector being the only component unable to be sourced from DigiKey.
- The "Human PnP" file can be found in `Hardware/0.4/assembly/assembly.html`, and is a major help in ensuring all parts are sourced before assembly, along with making locating the positions of each component much easier. Don't be concerned if not every pad has a part on it, there are a few DNP components which have footprints but are not placed during assembly. 
- One thing to keep an eye out for is that the WS2812 LEDs corner marking is NOT pin 1, so ensure you line it up with the square corner of the silkscreen, not the pin 1 marker.

Once the board is assembled, follow the [test procedure](test-procedure.md) to ensure smooth bringup without releasing the magic smoke. 

if there are any issues with sourcing / assembly / bringup please get in touch, I'm more than happy to help get your board working. 
