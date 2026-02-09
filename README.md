# Digital Timer (VHDL)

> A digital timer implemented in VHDL, designed and simulated at the hardware level to explore timing logic, state machines, and synchronous digital design.

## Why this exists
This project was built to deepen my understanding of how timing, state, and control flow are implemented **below the software layer**.  
While most of my professional work today is backend and production-focused, this project reflects how I think about systems: precise state transitions, explicit timing, and predictable behavior.

## What this project does
- Implements a digital timer using VHDL
- Handles clock input, counting logic, and display state
- Uses synchronous logic and clearly defined state transitions
- Designed for simulation and verification in a digital logic environment

## How it works
At a high level:
- A clock signal drives the system
- Internal counters track elapsed time
- State logic determines when and how the display updates
- Outputs are updated synchronously to avoid undefined behavior

The design prioritizes clarity and correctness over optimization.

## Design considerations
- All state changes are clock-driven to ensure deterministic behavior
- Counters are bounded to prevent overflow
- Logic is separated into clear functional components to aid debugging and simulation

These decisions mirror real hardware constraints, where timing errors and ambiguous state can lead to incorrect or unstable behavior.

## Simulation & verification
The design was validated through simulation to confirm:
- Correct counting behavior
- Proper state transitions
- Stable outputs across clock cycles

## Tech stack
- **Language:** VHDL  
- **Concepts:**  
  - synchronous digital logic  
  - finite state machines  
  - clocked processes  
  - hardware-level timing constraints

## What I learned
- How critical explicit state management is at the hardware level
- Why timing assumptions that feel “safe” in software must be proven in hardware
- How disciplined design upfront simplifies debugging later

This experience strongly informs how I approach backend and production systems today — especially around predictability, observability, and failure prevention.

## Project status
This repository contains completed undergraduate coursework and is no longer actively developed, but is kept public as a reference for my systems-level foundation.
