# FPGA-Based 6T SRAM Design and Simulation

A complete RTL-level 6T SRAM memory architecture designed and verified using VHDL on Basys 3 FPGA.

## 📌 Overview

This project implements a full 6T SRAM memory macro from transistor-level cell modeling 
to a complete digital control architecture, including read/write sequencing, address decoding, 
and timing analysis.

## 🛠️ Tools & Technologies

- **Language:** VHDL
- **FPGA Board:** Basys 3 (Xilinx Artix-7)
- **Simulation:** ModelSim
- **Synthesis:** Vivado

## 🔧 Architecture

- 6T SRAM cell model (2 cross-coupled inverters + 2 access transistors)
- Row decoder (binary-to-one-hot) for wordline selection
- MUX-based column read path architecture
- Differential BL/BL̄ write driver and precharge control
- Behavioral sense amplifier model
- FSM-based read/write sequence controller
- Synchronous design with register-based datapath and timing analysis

## ✅ Key Skills Demonstrated

- Memory macro architecture design
- FSM, decoder and MUX design
- Timing-driven hardware development
- Analog cell – digital control interface analysis

## 📁 Project Structure
```
fpga-6t-sram-design/
├── src/           # VHDL source files
├── sim/           # Testbench files
├── constraints/   # Timing constraints
└── docs/          # Block diagrams, waveforms
```

## 🏆 About

Developed as part of a digital design portfolio.  
