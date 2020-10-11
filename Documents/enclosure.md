# Enclosure Manufacturing

There are a number of ways the enclosure can be manufactured, and these options are outlined below:

All case files can be found in `mechanicals/1.0`.

By default, the enclosure has the below stackup:

```
--- PCB Plate, 1.6mm
--- Acrylic Upper, 4mm
--- Hub16 PCB, 1.6mm
--- Acrylic Mid, 4mm
--- Acrylic Lower, 3mm
  - Acrylic Incline, 3-4mm (optional)
```

You can however make a number of substitutions:

- Swap PCB plate for 3mm acrylic, and move upper 4mm acrylic to 3mm - note some switches may have reduced insertion depth into the PCB.
- Replace acrylic lower with FR4 PCB.
- 3d print parts instead of laser cutting or utilising PCBs for mechanical elements.
- Design your own! .step file can be exported from KiCad into you mCad tool of choice.
