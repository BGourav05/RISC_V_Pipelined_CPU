# 🧠 RISC-V 5-Stage Pipelined CPU (RV32I)

[![Verilog](https://img.shields.io/badge/HDL-Verilog-blue.svg)](https://en.wikipedia.org/wiki/Verilog)
[![RISC-V](https://img.shields.io/badge/ISA-RISC--V-green.svg)](https://riscv.org)
[![Simulation](https://img.shields.io/badge/Sim-Icarus%20Verilog-orange.svg)](http://iverilog.icarus.com/)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](LICENSE)

---

## 🧩 Key Features

- ✔️ **RV32I Instruction Set** — arithmetic, load/store, branch  
- 🔁 **5 Pipeline Stages** — IF, ID, EX, MEM, WB  
- ⚡ **Forwarding Unit & Hazard Detection**  
- 🧪 **Test Programs** — forwarding, stall, branch  
- 🖼️ **Animated Pipeline Diagram** (`docs/forwarding_demo.svg`)  
- 🧰 **Fully Scripted Simulation Flow** (Makefile + GTKWave ready)  

---

---

## 🔮 Future Work / Extensions

This project currently implements a **baseline RV32I 5-stage pipelined CPU** with forwarding, hazard detection, and branch control.  
Below are several recommended extensions to enhance functionality, performance, and design depth — ideal for research or course continuation.

| Area | Description | Benefit |
|------|--------------|----------|
| 🧠 **Control Hazard Handling** | Implement branch prediction (static or dynamic) and branch target buffer (BTB). | Reduces stalls caused by control hazards. |
| ⚙️ **Pipeline Flush Logic** | Add pipeline flush and stall signals for precise control during branch misprediction. | Improves correctness during control transfers. |
| 🧩 **Complete Memory Stage** | Expand MEM stage for full load/store operations using `LW`, `SW`, `LH`, `SH`, etc. | Enables complete RISC-V data access support. |
| 🔁 **Multiplier / Divider (M-Extension)** | Add hardware units for `MUL`, `DIV`, and `REM` operations. | Increases performance for arithmetic workloads. |
| 🕒 **Pipeline Timing Optimization** | Insert realistic timing delays or model critical paths. | Brings design closer to FPGA/ASIC implementation. |
| 🔐 **CSR & Exception Handling** | Introduce Control and Status Registers and basic trap handling. | Aligns design with full RISC-V compliance. |
| 🧮 **Cache System** | Integrate simple direct-mapped or 2-way associative caches. | Reduces memory latency and improves throughput. |
| 💾 **FPGA Deployment** | Synthesize and test on FPGA (e.g., Xilinx, Intel). | Demonstrates hardware-ready design capability. |
| 🧰 **Automated Testbench (SystemVerilog)** | Develop self-checking testbench using cocotb or SV assertions. | Improves simulation reliability and regression testing. |
| 📊 **Performance Monitoring Unit (PMU)** | Add counters for CPI, stalls, hazards, branch accuracy. | Enables quantitative analysis for research. |

---

## 🧾 Project Report

### 🧩 Title  
**Design and Implementation of a 5-Stage Pipelined RISC-V Processor in Verilog HDL**

---

### 🧠 Abstract

This project presents the design and implementation of a **5-stage pipelined RISC-V (RV32I) processor** using **Verilog HDL**.  
The processor supports the standard RISC-V instruction subset and features key architectural elements such as **data forwarding**, **hazard detection**, and **branch control**.  
The goal is to demonstrate a modular and synthesizable CPU core suitable for educational and research purposes in **VLSI design** and **computer architecture** courses.  

The processor has been simulated using **Icarus Verilog** and waveform analysis through **GTKWave**.  
An animated SVG visualization illustrates the forwarding mechanism, aiding conceptual understanding of pipeline hazards and data dependencies.  
The project serves as both a learning platform and a foundation for further research into advanced pipeline optimization techniques.

---

### 🎯 Objectives

1. **To design** a modular, synthesizable RISC-V processor in Verilog HDL.  
2. **To implement** a 5-stage pipeline architecture: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory (MEM), and Write Back (WB).  
3. **To incorporate** forwarding and hazard detection units to handle data dependencies efficiently.  
4. **To implement** branch control logic for conditional and unconditional jumps.  
5. **To validate** the design through simulation and waveform verification.  
6. **To create** open-source, well-documented HDL code suitable for GitHub publication and educational reuse.

---

### ⚙️ Methodology

#### 1. Architecture Definition  
The RISC-V RV32I base ISA was selected for simplicity and standardization.  
The processor design follows the 5-stage pipeline model used in classic RISC architectures.

#### 2. Module Design  
- **Control Unit** – Decodes instructions and generates control signals.  
- **Register File** – Implements 32×32-bit registers with write-back support.  
- **ALU** – Performs arithmetic and logical operations.  
- **Forwarding Unit** – Resolves data hazards via EX/MEM and MEM/WB bypassing.  
- **Hazard Detection Unit** – Detects load-use hazards and introduces stalls.  
- **Branch Unit** – Handles BEQ, BNE, and JAL instructions with target PC calculation.  

#### 3. Simulation & Testing  
The CPU was verified using **Icarus Verilog** and **GTKWave**, with custom testbenches covering arithmetic, load/store, and branching operations.  
Waveforms were analyzed to confirm correct forwarding, stalling, and control flow.

#### 4. Documentation & Visualization  
An animated SVG waveform was created to visually demonstrate the **data forwarding** signals (`forwardA`, `forwardB`), improving the project’s educational clarity.  

---

### 📈 Results

- Successfully executed RISC-V instructions (`ADD`, `SUB`, `AND`, `OR`, `XOR`, `ADDI`, `LW`, `SW`, `BEQ`, `BNE`, `JAL`).  
- Verified correct hazard and forwarding behavior in pipeline waveform.  
- Demonstrated modularity for extension into more advanced RV32I/M designs.  
- Achieved full functional simulation with clear visualization of forwarding events.

---

### 🧩 Conclusion

The project successfully demonstrates a **working 5-stage pipelined RISC-V processor** using Verilog HDL, capable of executing arithmetic, memory, and control instructions with proper hazard management.  
The design highlights key VLSI concepts such as pipelining, hazard resolution, and modular hardware architecture.  
Beyond its educational value, the design forms a foundation for further exploration into **branch prediction**, **cache integration**, and **FPGA-based synthesis**.  

By publishing the project on GitHub with detailed documentation, simulation scripts, and visual assets, it contributes to open-source learning resources in **VLSI system design** and **computer architecture education**.

---

### 🧩 Keywords
`RISC-V` · `Verilog HDL` · `Pipeline Processor` · `Hazard Detection` · `Forwarding Unit` · `VLSI Design` · `Computer Architecture`

---
**BIHAR GOURAV**
**bihargaurav56@gmail.com**
