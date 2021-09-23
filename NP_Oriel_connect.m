%NP_USB
clear all
dll_path = 'D:\Dropbox\Graduation Research\27 Measurement setup\Devices\NewportUSB\Newport USB Driver 4.2.2\Bin\';
NPasm = NET.addAssembly([dll_path 'UsbDllWrap.dll']);
%Get a handle on the USB class
NPASMtype = NPasm.AssemblyHandle.GetType('Newport.USBComm.USB');
%launch the class USB, it constructs and allows to use functions in USB.h
NP_USB = System.Activator.CreateInstance(NPASMtype); 
%seems identical:
np =Newport.USBComm.USB;



% NP_Oriel
clear all
dll_path = 'D:\Dropbox\Graduation Research\27 Measurement setup\Devices\NewportUSB\OrielUSB\';
NPasmCs = NET.addAssembly([dll_path 'Cornerstone.dll']);
% cy = NET.addAssembly([dll_path 'Cypress123\CyUSB.dll']);
% loadlibrary([dll_path 'Cypress123\CyUSB'])
% libisloaded([dll_path 'Cypress123\CyUSB'])
% get a handle on the USB class
typeCs=NPasmCs.AssemblyHandle.GetType('CornerstoneDll.Cornerstone');
%launch the class USB
% NP_USB = System.Activator.CreateInstance(typeCs);
cs = CornerstoneDll.Cornerstone(true);
cs.getWavelength
% typeCs=NPasmCs.AssemblyHandle.GetType('CornerstoneDll.Cornerstone');

methods(NPasmCs.Classes{1})
cs =CornerstoneDll.Cornerstone(true);

NP_USB = System.Activator.CreateInstance(typeCS, System.Boolean.TrueString);
NP_USB = System.Activator.CreateInstance(typeCS);


cs =CornerstoneDll.Cornerstone(true);
