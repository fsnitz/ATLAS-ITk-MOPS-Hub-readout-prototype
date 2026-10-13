### Utilized Software versions and required packages
- Vivado version: 2023.2.2
- PetaLinux version: 2023.2
- Ubuntu version as platform for PetaLinux: 22.04 LTS
- During the installation of Vivado, it is necessary to install at least the Kria SoMs and the Ultrascale+ family when prompted which chip families should be installed.

### Execution of a build scrpit
- Once the Vivado application has been launched, navigate to the Tools menu and select the option to Run Tcl Scrip

### How to simulate a design
- Once the design has been built without errors, navigate to Simulation (on the left-hand side) and execute Behavioral Simulation.


### Important information before running synthesis and co. 
- IF AXI-interconnects are used: The Base Address in the Address Editor tab has to be changed according to the base address of the Register map used (Double click on instance in Block Design to show) 