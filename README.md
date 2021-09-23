# NPUSB
Establish MATLAB connection with Newport USB devices
This code is developed to automate your Newport serial devices through MATLAB.

It uses a .NET Framework instance. Newport doesnt support matlab, and the link to .NET not that trivial, so maybe by sharing this code I can save a few people some hours figuring it out.

I used a 1936-R powermeter over USB. This code can be generalized to any newport serial device by setting the device ID and installing the corresponding drivers.


How to set up the NEWPORT 1936-R powermeter on MATLAB 64bit
1). Install USB driver 64bit, v5.0.8, can be downloaded from https://www.newport.com/p/1936-R
2). Install Computer interface software 64bit v3.0.4
3). Install .NET Framework (code is tested on 4.7) 
4). Power cycle the powermeter before running code
5). Run MATLAB functions on 64 bit 

Function NP_USB_connect.m does most of the magic, the other functions just improve conciseness and code readability.

Function NP_SUB_reperror.m is a simple wrapper for reporting succes/fail. Sometimes the device reports error USBDUPLICATEADDRESS even when the code executed just fine.

Adriaan Taal - Columbia University
at3111@columbia.edu
