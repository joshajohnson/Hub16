# Enclosure Manufacturing

There are numerous ways in which the case for the keyboard can be built, with the different possibilities outlined below.

### Laser Cutting
For a laser cut enclosure, the required files are in `Mechanicals/laser-cut`. 
	
* `topSpacer.dxf` and `bottomSpacer.dxf` need to be cut from 4mm acrylic
* `bottomPlate.dxf` and `inclineSpacer.dxf` should be cut from 3mm acrylic, but could be increased to 4mm if slightly longer screws are used to hold everything together. 
* `topCover.dxf` holds the key switches in place, and should be no greater than 1.5mm thick, as otherwise the keys will not fit. 

### 3D Printing

The 3D printed enclosure simply prints the same parts as what would be laser cut, and as such printing all the files in `Mechanicals/3d-print` should be sufficient. 

### PCB Plate

The top cover which holds all of the keys can also be fabricated from a 1.2mm thick PCB, as it may be cheaper / easier than purchasing a sheet of 1.5mm acrylic, whilst having a better surface finish than a 3D print. The KiCad project in `Mechanicals/topCover-pcb` is the design, along with the gerbers which are located in the same folder. Note many fabricators will not like the file due to it missing layers, so may require some explanation regarding how it should be fabricated. 

With all the parts in hand, jump on over to the [keyboard assembly](keyboard-assembly.md) instructions to assemble your new pride and joy. 