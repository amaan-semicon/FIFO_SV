# SystemVerilog FIFO Design with Testbench

This repository contains a **parameterized synchronous FIFO (First-In First-Out)** design implemented in **SystemVerilog** along with its control and register file modules.  
It also includes a testbench to verify correct functionality under different read/write scenarios.

---

## 📂 Repository Contents
- **`fifo.sv`** – Top-level FIFO module integrating the register file and control logic.  
- **`fifo_register_file.sv`** – Memory storage module with synchronous write and asynchronous read.  
- **`fifo_ctrl_file.sv`** – Pointer management and full/empty flag logic.  
- **`fifo_tb.sv`** – Testbench with stimulus for verification.  
- **`fifo_schematic_`** – Schematic diagram of the FIFO design.  
- **`fifo_tb_pic`** – Simulation waveform or block diagram related to the testbench.  
- **`fifo_top_module`** – Top-level block diagram of FIFO.  
- **`full_empty_conditions`** – Diagram explaining full and empty states using circular queue.  
- **`FWFT`** – Diagram showing FWFT FIFO vs Standard FIFO.  

---

## 📷 FIFO Design Schematic
![FIFO Schematic](fifo_schematic_.png)

---

## 🆕 Additional FIFO Related Diagrams

### 1️⃣ FIFO Top Module Architecture
This image represents the **top-level block diagram** of the FIFO, showing how the register file and control unit are connected.

![FIFO Top Module](fifo_top_module.jpg)

---

### 2️⃣ Circular Queue Full/Empty Conditions
A clear explanation of how the **write pointer (`wr_ptr`)** and **read pointer (`rd_ptr`)** interact to indicate **FULL** and **EMPTY** FIFO states.

![Circular Queue Full/Empty Conditions](full_empty_conditions.jpg)

---

### 3️⃣ First Word Fall Through (FWFT) FIFO
A diagram showing the **difference between standard FIFO and FWFT FIFO**, where the first word automatically becomes available on the output.

![FWFT FIFO](FWFT.jpg)

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
