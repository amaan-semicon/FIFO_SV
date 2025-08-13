# SystemVerilog FIFO Design with Testbench

This repository contains a **parameterized synchronous FIFO (First-In First-Out)** design implemented in **SystemVerilog** along with its control and register file modules.  
It also includes a testbench to verify correct functionality under different read/write scenarios.

---

## 📂 Repository Contents
- **`fifo.sv`** – Top-level FIFO module integrating the register file and control logic.  
- **`fifo_register_file.sv`** – Memory storage module with synchronous write and asynchronous read.  
- **`fifo_ctrl_file.sv`** – Pointer management and full/empty flag logic.  
- **`fifo_tb.sv`** – Testbench with stimulus for verification.  
- **`fifo_schematic.png`** – Schematic diagram of the FIFO design.  
- **`fifo_tb_pic.png`** – Simulation waveform or block diagram related to the testbench.  

---

## 📷 FIFO Design Schematic
![FIFO Schematic](fifo_schematic_.png)

---

## 📷 Testbench Output / Waveform
![FIFO Testbench Output](fifo_tb_pic.png)

---

## 🚀 Features
- Parameterized **Data Width** and **Address Depth**.
- Handles **simultaneous read and write** operations.
- Generates **full** and **empty** status flags.
- Clean modular design for reuse in larger projects.

---

## 🛠 Applications
- Data buffering in digital communication systems.
- Rate adaptation between producer and consumer modules.
- Temporary storage between asynchronous subsystems.

---

