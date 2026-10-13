# MPSoC-based MOPS-Hub readout board — supplementary project files

This repository accompanies the master's thesis **“Development of an MPSoC-based readout board as a verification method and interface for the ATLAS ITk MOPS-Hub communication interface”** (2024).

The work addresses an intermediate readout system for the ATLAS Inner Tracker (ITk) Pixel Detector Control System. It uses the AMD Kria K26 System-on-Module (SoM) with programmable logic (PL) and a processing system (PS), PetaLinux, an AXI-based shared-memory interface, and an electrical link (eLink) to communicate with the MOPS-Hub. The **eLink** is the electrical communication link; the **eLink Core** is its FPGA firmware implementation.

> **Project status:** The PL–PS shared-memory interface was successfully tested. The eLink interface exhibited firmware-timing and hardware/signal-integrity limitations. Full readout-chain functionality was **not verified** within the thesis. The published files should therefore be treated as research and development artifacts, not as a validated production design.
>
> **Before publishing this repository:** Copy the actual project files into the paths listed below, preserving capitalization and filenames. These links are derived from the original thesis appendix and cannot be verified until the repository has been populated. Check that you have permission to redistribute third-party documentation, vendor files, externally developed tools, and CERN/project-specific materials. If a file cannot be released, remove its repository link and cite the authorized upstream source instead.

## Getting started

1. Consult the thesis for the system architecture, implementation decisions, test setup, results, and limitations.
2. For Vivado project generation, start with the [firmware build instructions](Firmware/BuildScripts/README.md) and the relevant build script below. The thesis used the **2023.2** versions of Vivado and PetaLinux; confirm any additional requirements in the build instructions.
3. For embedded Linux, see the [PetaLinux projects](Software/PetaLinuxProjects/) and associated tools under [ToolsAndLibs](Software/ToolsAndLibs/).
4. For the eLink adapter, see the [KR260 eLink-hat revisions](Hardware/KR260eLinkHat/). The second revision includes changes for receiver-side common-mode biasing.
5. Use a tagged release of this repository when reproducing the thesis, because its main development branch may change over time.

## Repository contents

This [README](README.md) is the index of the supplementary materials.

The five principal directories are [Hardware/](Hardware/), [Firmware/](Firmware/), [Software/](Software/), [Documentation/](Documentation/), and [Miscellaneous/](Miscellaneous/). Links below are **relative to the root of this repository**.

### Hardware

- [Hardware/KR260eLinkHat/](Hardware/KR260eLinkHat/) — adapter board for interfacing the KR260 evaluation board with the eLink signals.
  - [rev01/](Hardware/KR260eLinkHat/rev01/) — initial design, used during the thesis.
    - [KR260eLinkHatSchematics_Rev01.pdf](Hardware/KR260eLinkHat/rev01/KR260eLinkHatSchematics_Rev01.pdf) — revision 01 schematic (thesis Appendix A.1).
    - [eLinkHatPCB_Rev01.pdf](Hardware/KR260eLinkHat/rev01/eLinkHatPCB_Rev01.pdf) — revision 01 PCB layout (Appendix A.2).
  - [rev02/](Hardware/KR260eLinkHat/rev02/) — revision incorporating biasing changes for LVDS receiver common-mode voltage.
    - [KR260eLinkHatSchematics_Rev02.pdf](Hardware/KR260eLinkHat/rev02/KR260eLinkHatSchematics_Rev02.pdf) — revision 02 schematic (Appendix A.3).
    - [eLinkHatPCB_Rev02.pdf](Hardware/KR260eLinkHat/rev02/eLinkHatPCB_Rev02.pdf) — revision 02 PCB layout (Appendix A.4).
- [Hardware/Library/](Hardware/Library/) — KiCad symbols, footprints, and 3D models supplementing the standard libraries.
- [Hardware/MOPS-Hub_Readout_board/](Hardware/MOPS-Hub_Readout_board/) — preliminary design files for a dedicated K26 SoM-based MOPS-Hub readout board.

### Firmware

- [Firmware/BuildScripts/](Firmware/BuildScripts/) — Vivado build scripts and setup guidance.
  - [MopsHubReadoutBoard_build.tcl](Firmware/BuildScripts/MopsHubReadoutBoard_build.tcl) — readout board firmware design (thesis Appendix B.4).
  - [PLtoPS_Test_build.tcl](Firmware/BuildScripts/PLtoPS_Test_build.tcl) — PL–PS shared-memory interface test design (Appendix B.6).
  - [eLinkTestSim_build.tcl](Firmware/BuildScripts/eLinkTestSim_build.tcl) — eLink interface simulation design.
  - [eLinkTest_build.tcl](Firmware/BuildScripts/eLinkTest_build.tcl) — eLink interface hardware test design (Appendix B.7).
  - [README.md](Firmware/BuildScripts/README.md) — Vivado version information and build instructions.
- [Firmware/SourceFiles/](Firmware/SourceFiles/) — sources used by the firmware designs.
  - [BlockDesigns/](Firmware/SourceFiles/BlockDesigns/) — Vivado block designs.
  - [Constraints/](Firmware/SourceFiles/Constraints/) — I/O and timing constraints.
  - [HDL/](Firmware/SourceFiles/HDL/) — VHDL and Verilog sources, including supporting components used by the eLink firmware implementation.
- [Firmware/ConfigurationFiles/](Firmware/ConfigurationFiles/) — PP3-FPGA module configuration files used during testing. Record the exact version used in each experiment.

### Software

- [Software/PetaLinuxProjects/](Software/PetaLinuxProjects/) — files for preparing the KR260 embedded Linux systems, including the necessary BSP and hardware design resources as described in the thesis.
  - [PLtoPS_Test/](Software/PetaLinuxProjects/PLtoPS_Test/) — shared-memory interface test (thesis Section 7.1).
  - [MopsHubReadoutBoard/](Software/PetaLinuxProjects/MopsHubReadoutBoard/) — readout board and proposed full-chain test project (thesis Section 7.3). The corresponding register map and hardware-access files are associated with this project.
  - [K26_StarterKit/](Software/PetaLinuxProjects/K26_StarterKit/) — starter BSP files from which the thesis projects were derived.
  - [epos-rootfs/](Software/PetaLinuxProjects/epos-rootfs/) — AlmaLinux 9-based root filesystem materials.
- [Software/ToolsAndLibs/](Software/ToolsAndLibs/) — supporting tools and libraries.
  - [xsa-to-overlays/](Software/ToolsAndLibs/xsa-to-overlays/) — Python tool for preparing Device Tree-related files from a hardware design.
  - [PuzzledLizardWizard/](Software/ToolsAndLibs/PuzzledLizardWizard/) — Python tool for generating a Hardware Access Library (HAL) from a register-map JSON file.
  - [libuio-bugFix/](Software/ToolsAndLibs/libuio-bugFix/) — library files for user-space I/O access under embedded Linux.

The original appendix additionally mentions a `HalFiles` subdirectory inside the PetaLinux projects, but does not establish its full relative path. Add a direct link here after confirming its location in the repository.

### Documentation

- [Documentation/](Documentation/) — source documents referred to during development. **Check redistribution rights before committing any documents listed here.**
  - [KR260_schematics.pdf](Documentation/KR260_schematics.pdf) — KR260 evaluation board schematics.
  - [DS987_K26_Datasheet.pdf](Documentation/DS987_K26_Datasheet.pdf) — K26 SoM data sheet.
  - [Kria_K26_SOM_PinMapping.pdf](Documentation/Kria_K26_SOM_PinMapping.pdf) — K26 SoM connector and MPSoC pin mapping.
  - [OpcSpringer.pdf](Documentation/OpcSpringer.pdf) — book on OPC and OPC UA; **do not redistribute unless permission/licensing explicitly allows it**. Prefer a publisher or DOI link.
  - [EMP_Setup_guide.pdf](Documentation/EMP_Setup_guide.pdf) — EMP-group setup guide; **confirm that public distribution is authorized**.

### Miscellaneous

- [Miscellaneous/BlockDesignPrints/](Miscellaneous/BlockDesignPrints/) — PDF exports of firmware block diagrams reproduced in the thesis.
  - [InitialBD.pdf](Miscellaneous/BlockDesignPrints/InitialBD.pdf) — initial readout-board design (Appendix B.1).
  - [InitialBDstripped.pdf](Miscellaneous/BlockDesignPrints/InitialBDstripped.pdf) — simplified initial firmware (Appendix B.2).
  - [ExampleProject.pdf](Miscellaneous/BlockDesignPrints/ExampleProject.pdf) — register-map example (Appendix B.3).
  - [SystemOverview.pdf](Miscellaneous/BlockDesignPrints/SystemOverview.pdf) — readout board system overview (Appendix B.4).
  - [eLinkBD.pdf](Miscellaneous/BlockDesignPrints/eLinkBD.pdf) — readout-board eLink block (Appendix B.5).
  - [PLtoPS_BD.pdf](Miscellaneous/BlockDesignPrints/PLtoPS_BD.pdf) — PL–PS interface test (Appendix B.6).
  - [eLinkTestBD.pdf](Miscellaneous/BlockDesignPrints/eLinkTestBD.pdf) — eLink test project (Appendix B.7).
  - [eLinkTesteLinkBlockDB.pdf](Miscellaneous/BlockDesignPrints/eLinkTesteLinkBlockDB.pdf) — additional block diagram used in the eLink interface test.
- [Miscellaneous/CodeSnippets/](Miscellaneous/CodeSnippets/) — sources for code snippets reproduced in the thesis.
  - [PLtoPS_Test_regs.json](Miscellaneous/CodeSnippets/PLtoPS_Test_regs.json) — airhdl register map for the PL–PS interface test (Appendix C.1).
- [Miscellaneous/DrawIoSource/](Miscellaneous/DrawIoSource/) — editable diagrams drawn for the thesis.
- [Miscellaneous/Figures/](Miscellaneous/Figures/) — figures used in the thesis.

## Reproducibility and release information

Record the version/tag used for each public thesis release, along with relevant dependencies, hardware revisions, and tool versions. If possible, identify the exact PP3-FPGA firmware configuration used for each test. When a stable release is available, archive it in a long-term research repository and cite the corresponding persistent identifier in the published thesis.

The root directory and file names above follow the *original digital appendix*. Only the thesis appendix was supplied for this README; the supplementary hardware, firmware, software, and documentation files themselves have **not** been inspected or validated in this draft.

## Citation

**Thesis:** Felix Sebastian Nitz, *Development of an MPSoC-based readout board as a verification method and interface for the ATLAS ITk MOPS-Hub communication interface*, Master's thesis, Cologne University of Applied Sciences, 2024.

**Repository:** Cite the released repository version and its eventual DOI or version-specific URL when available. Add a `CITATION.cff` file once the repository metadata and release details are finalized.
