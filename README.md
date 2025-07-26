# KeylessEntrySim
Keyless Entry System – Simulink Model + Matlab Code

This project simulates a basic keyless car entry system using MATLAB R2024 and Simulink. It models how a vehicle responds to key detection and authentication signals, unlocking only when both are successfully received.

🚗 System Overview

Modern vehicles often use keyless entry systems that detect the presence of a smart key and verify its authenticity before unlocking the doors. This simulation replicates that logic in a simplified environment using logic blocks and signal inputs.

✅ System Logic:
	•	The car detects when a key is in range (Key_Detected)
	•	The system authenticates the key (Auth_Success)
	•	The car unlocks only when both conditions are true

🧩 Components Used
	•	From Workspace (2x): to import the signals (Key_Detected and Auth_Success)
	•	Compare To Constant (2x): to verify if signals are active (== 1)
	•	Logical Operator: to perform an AND operation between the two comparisons
	•	Delay: to simulate slight response time before unlocking
	•	Display: to show output (1 = unlocked, 0 = locked)
	•	Scope: optional, to visualize system behavior over time

⏳ Input Signals

The simulation runs for 15 seconds with a time step of 0.1s.

🔑 Key_Detected
	•	Signal is 1 from 2s to 10s (key is in range)
	•	Signal is 0 otherwise

🟢 Auth_Success
	•	Signal is 1 from 4s to 10s (successful authentication begins later)
	•	Signal is 0 before 4s and after 10s

📈 Output (Unlock Signal)
	•	Output is 1 (unlocked) only between 4s and 10s, where both signals are true
	•	Output is 0 at all other times

📁 Files Included
	•	keyless_entry_sim.slx: Simulink model file
  •	README.md: Project documentation
  • keyless_entry_system.m: Matlab Code for simulation conditions.

💡 Notes
	•	This is a conceptual simulation — in real-world systems, key authentication involves cryptographic exchange and more complex protocols.
	•	You can extend the model by adding signal noise, timeout logic, or unlocking animations.
