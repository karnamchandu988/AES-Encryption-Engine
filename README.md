# 🔐 One-Round AES Encryption Engine (Verilog + ASIC Flow)

This repository contains the complete implementation of a one-round AES (Advanced Encryption Standard) encryption engine using Verilog HDL. The design was simulated, synthesized, and physically implemented using a full ASIC design flow.

---

## 📌 Project Overview
AES is a widely adopted symmetric encryption algorithm used for securing data.  
In this project, the core operations of AES (AddRoundKey, SubBytes, ShiftRows, MixColumns) are implemented in Verilog and synthesized into hardware.  
The project demonstrates how digital encryption engines can be efficiently designed and validated using VLSI tools.

---

## 🚀 Key Features
✅ RTL design of one-round AES in Verilog  
✅ Simulation results captured in NCLaunch (waveform + I/O output)  
✅ Synthesis using Cadence Genus with `.tcl` and `.sdc` files  
✅ Floorplanning and Physical Design using Cadence Innovus  
✅ AES schematic (all module connectivity)  
✅ Area, power, and timing analysis reports generated  
✅ Final routed layout (post-route, GDSII view) ready for sign-off  
✅ GDSII and netlist included for backend flow  

---

## 🛠 Tools & Environment
- **Verilog HDL**  
- **Cadence NCLaunch** – RTL simulation  
- **Cadence Genus** – Logic synthesis  
- **Cadence Innovus** – Floorplan, Place & Route, layout generation  
- **Red Hat Enterprise Linux** – OS environment  

---

## 📂 Repository Contents
| File / Folder                | Description |
|-------------------------------|-------------|
| `aes.v`                       | Verilog HDL code for one-round AES engine |
| `tb_in_aes.v`                 | Testbench for AES simulation |
| `aes_one_round_netlist.v`     | Synthesized netlist from Genus |
| `aes.tcl`                     | Genus synthesis TCL script |
| `aes.sdc`                     | Design constraints (clock & IO timing) |
| `aes_one_round_area.rpt`      | Area report |
| `aes_one_round_power.rpt`     | Power report |
| `aes_one_round_timing.rpt`    | Timing report |
| `aes.gds`                     | Final GDSII layout |
| `screenshots/`                | Simulation, synthesis, floorplan, schematic, and layout images |
| `doc/AES_DOCUMENT.pdf`        | Final project report |

---

## 📸 Output Highlights
1. **AES Simulation Output — Waveform View**  
2. **AES Simulation Output — Input/Output Snapshot**  
3. **RTL Synthesis View — Genus Main Window**  
4. **RTL Synthesis View — Zoomed Snapshot (Genus)**  
5. **Final Floorplan View — Complete PD Snapshot**  
6. **Floorplan View — Zoomed Snapshot**  
7. **AES Schematic View — Module Connectivity**  
8. **Power Map & Clock Tree Views**  
9. **Routing Completion & Power Stripes View**  
10. **Final Layout Snapshot — Post-Route / GDSII**

---

## 📊 Project Results
- ✅ **Simulation Verified**: AES outputs matched expected results  
- ✅ **Synthesis Completed**: Netlist generated with Genus  
- ✅ **Floorplan & Placement**: 100% cell utilization achieved  
- ✅ **Power, Timing, Area Reports**: Successfully generated from Innovus  
- ✅ **Final GDSII**: Clean layout ready for backend/fabrication  

---

## 📘 Full Report
The complete project documentation is available in:  
📄 **`doc/AES_DOCUMENT.pdf`**

It includes:
- 📚 Introduction to AES  
- 🔬 Literature Survey  
- 🏗️ Design Breakdown (with diagrams)  
- 💻 Tool Descriptions  
- 📈 Simulation & Synthesis Results  
- 🧾 Power, Timing, Area Reports  
- 🧩 RTL Code and Screenshots  

---

## 👨‍💻 Authors & Credits
This project was developed as a **Mini Project during the CITD Internship**.  

**Team Members:**
- Karnam Chandu  
- Bombothula Kruthika  
- Chouti Poojitha  
- Yellu Harish Reddy  

---

