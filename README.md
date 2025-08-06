# 🔐 One-Round AES Encryption Engine (Verilog + ASIC Flow)

This repository contains the complete implementation of a **one-round AES (Advanced Encryption Standard) encryption engine** using **Verilog HDL**, simulated, synthesized, and physically implemented using a full **ASIC design flow**.

---

## 📌 Project Overview
AES is a widely adopted symmetric encryption algorithm used for securing data. In this project, the **core operations of AES (AddRoundKey, SubBytes, ShiftRows, MixColumns)** are implemented in Verilog and synthesized into hardware. This design demonstrates how digital encryption engines can be efficiently implemented and validated using VLSI design tools.

---

## 🚀 Key Features
- ✅ RTL design of one-round AES in Verilog
- ✅ Simulation using NCLaunch (with built-in testbench)
- ✅ Synthesis using Cadence Genus with .tcl and .sdc files
- ✅ Full Place & Route and layout using Cadence Innovus
- ✅ Power, area, and timing reports generated
- ✅ GDSII and netlist ready for backend use
- ✅ Area comparison and final layout screenshots included

---

## 🛠 Tools & Environment
- **Verilog HDL**
- **Cadence NCLaunch** – RTL simulation
- **Cadence Genus** – Logic synthesis
- **Cadence Innovus** – Place & Route, layout generation
- **Red Hat Enterprise Linux** – OS environment

---

## 📂 Repository Contents

| File / Folder                  | Description                                          |
|-------------------------------|------------------------------------------------------|
| `aes.v`                       | Verilog HDL code for one-round AES engine           |
| `tb_in_aes.v`                 | Testbench included within AES file for simulation   |
| `aes_one_round_netlist.v`     | Synthesized netlist from Genus                      |
| `aes.tcl`                     | Genus synthesis TCL script                          |
| `aes.sdc`                     | Design constraints for clock and IO timing          |
| `gdsii/`                      | GDS layout output folder                            |
| `screenshots/layout/`         | Final routed layout, placement, and clock reports   |
| `screenshots/area_comparison/`| Area utilization before and after filler insertion  |
| `screenshots/timing_power/`   | Timing and power analysis results from Innovus      |
| `doc/AES_DOCUMENT.pdf`        | Final project report with all chapters and appendix |

---

## 📊 Highlights
- 🔍 **Simulation-Verified**: Output matches reference encryption
- 🧠 **Synthesized with 0 WNS**: Timing met successfully
- 🧱 **Full layout done**: 100% cell density after filler insertion
- 📸 **Screenshots added**: PnR, clock, area, power, timing — all documented
- 📐 **Layout Output**: DRC-clean and ready for fabrication GDSII

---

## 📘 Full Report
The full project report is available in:  
📄 `doc/AES_DOCUMENT.pdf`

It includes:
- 📚 Introduction to AES
- 🔬 Literature Survey
- 🏗️ Design Breakdown (with diagrams)
- 💻 Tool Descriptions
- 📈 Simulation and Synthesis Results
- 🧾 Power, Timing, Area Reports
- 🧩 Complete RTL code and screenshots in Appendix

---

## 👨‍💻 Author
**Karnam Chandu**  
B.Tech – ECE, AVN Institute of Engineering & Technology  
Project submitted as part of VLSI stream under faculty guidance

---



