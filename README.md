# tes

An IDL workspace for creating calibrated radiance data and performing temperature-emissivity separation (TES).

The routines are designed to use data collected using the [Model 102F Hand Portable FT-IR Spectrometer](http://www.dpinstruments.com/products/model-102-hand-portable-ft-ir-spectrometer/) and the [Turbo FT / Fast Portable Spectral Sensor](http://www.dpinstruments.com/products/turbo-ft-fast-portable-spectral-sensors/) manufactured by [D&P Instruments](http://www.dpinstruments.com).

Using the cold blackbody (`.cbb`), warm blackbody (`.wbb`), sample (`.sam`), and downwelling (`.dwr`) measurements/scans, the sample and downwelling data can be converted to calibrated spectral radiance [W/m^2/sr/micron] using the `dp_radiance_calibration` program.  These calibrated radiance data are stored in files with `.sac` and `.dwc` extensions, respectively.

These calibrated radiance files can be used to derive the sample temperature and spectral emissivity using the `tes` program.

## Installation
Clone this repository to create the hierarchy ...

```
tes
├── data
│   ├── 200406071040.cbb
│   ├── 200406071041.wbb
│   ├── 200406071042.sam
│   └── 200406071044.dwr
├── LICENSE
├── README.md
└── src
    ├── dp_radiance_calibration.pro
    └── tes.pro
```

which is an IDL workspace.  In the IDL development environment (`idlde`), switch workspace to this new top-level directory.  You can then compile and run the abovementioned programs.

&nbsp;
## Contact

**Carl Salvaggio, Ph.D.**  
Email: carl.salvaggio@rit.edu

Chester F. Carlson Center for Imaging Science  
Rochester Institute of Technology  
Rochester, New York 14623  
United States
