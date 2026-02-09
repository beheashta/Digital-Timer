# Digital Timer (VHDL)

> A digital countdown timer designed and implemented using digital logic and VHDL, focusing on synchronous design, state control, and hardware-level timing.

## Overview
This project implements a digital timer that counts down from a user-defined value (0–60 seconds) and displays the remaining time on a two-digit seven-segment display.  
The system is driven by a clock signal and controlled using explicit start, pause, and reset inputs.

The project was completed as part of a digital systems design course and emphasizes **deterministic behavior, explicit state transitions, and timing correctness** — principles that continue to inform how I approach backend and production systems today.

## System behavior
At a high level, the timer operates as follows:
1. A 6-bit input value defines the initial countdown time
2. The value is latched when the start signal is triggered
3. A clock-driven counter decrements the value once per second
4. The current count is decoded and displayed on two seven-segment displays
5. The timer halts automatically when the count reaches zero

All state transitions occur synchronously on clock edges to ensure predictable behavior.

## Design details
- **Input width:** 6 bits (supports values 0–60)
- **Control signals:** start, pause, reset
- **Timing:** driven by a stable clock source
- **State control:** implemented using flip-flop–based logic
- **Display output:** two seven-segment displays driven by decoded logic

The design uses counters, flip-flops, and combinational logic to manage control flow and output correctness.

## Digital logic concepts used
- Synchronous counters
- SR and JK flip-flops
- Finite state control
- Clocked processes
- Seven-segment display decoding
- Boolean simplification using Karnaugh maps

These components were combined to form a complete, clock-driven system with well-defined behavior.

## VHDL implementation
The system was modeled in VHDL using:
- An entity definition to specify external inputs and outputs
- An internal architecture composed of clock-sensitive processes
- Explicit signal definitions for internal state and control

Simulation was used to validate:
- Correct countdown behavior
- Proper handling of start, pause, and reset signals
- Stable output across clock cycles

## Design tradeoffs & limitations
- The design prioritizes clarity and correctness over hardware optimization
- Some display decoding logic could be further refined for full BCD accuracy
- Timestamp precision depends on the stability of the input clock

These tradeoffs were acceptable given the project scope and instructional goals.

## What I learned
- How critical explicit state management is in hardware-level systems
- Why timing assumptions must be proven, not assumed
- How small logic errors can propagate into visible system faults
- How disciplined synchronous design simplifies debugging and verification

This project strengthened my systems-level intuition and directly influences how I think about reliability, predictability, and failure prevention in software systems.

## Project context
This repository contains completed undergraduate group coursework and is no longer actively developed.  
It is kept public as a reference for my foundational experience in digital systems and hardware-level design.
