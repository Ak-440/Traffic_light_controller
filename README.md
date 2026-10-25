Traffic Light Controller Using Verilog

Project Overview

This project implements a traffic light controller using Verilog HDL. The design controls red, yellow, and green traffic lights in a sequence using a timer and a Finite State Machine (FSM).

Tools Used

- Verilog HDL
- ModelSim Intel FPGA Starter Edition 20.1

Project Modules

- "traffic_timer.v" — Counts clock cycles and generates a timer-expired signal.
- "traffic_fsm.v" — Controls the traffic light sequence using an FSM.
- "traffic_system_top.v" — Connects the timer and FSM modules.
- "traffic_system_tb.v" — Testbench used to simulate and verify the design.

Working Principle

1. The clock provides timing signals.
2. The timer counts clock cycles.
3. When the timer expires, the FSM changes its state.
4. The red, yellow, and green lights change according to the programmed sequence.

Simulation

The design is simulated in ModelSim. The waveform is used to observe the clock, reset, and traffic light output signals.

Project Status

Verilog design and ModelSim simulation.

Author

Electronics and Telecommunication Engineering Student
