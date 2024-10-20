# Traffic Light Controller
# Purpose:

Controls a traffic light system with red, yellow, and green lights.
# Functionality:

Implements a finite state machine (FSM) to manage the traffic light sequence.
The FSM has four states: ST_INIT, ST_GREEN, ST_YELLOW, and ST_RED.
The initial state is ST_INIT.
The FSM transitions between states based on the current state and the clock signal.
The output signals red, yellow, and green control the corresponding traffic lights.
# Code Breakdown:

Module Declaration:
Defines the module name traffic_light_controller.
Specifies the input port:
clock: Clock signal.
Specifies the output ports:
red, yellow, green: Outputs to control the traffic lights.
State Machine Parameters:
Defines the state machine parameters using the parameter keyword.
State Register:
Declares a 2-bit register state to store the current state.
Always Block:
Executes on the rising edge of the clock.
Implements the state machine logic:
Uses a case statement to handle different states:
ST_INIT: Transitions to ST_GREEN and turns off all lights.
ST_GREEN: Transitions to ST_YELLOW and turns on the green light.
ST_YELLOW: Transitions to ST_RED and turns on the yellow light.
ST_RED: Transitions to ST_GREEN and turns on the red light.
The default case handles invalid states by resetting the state to ST_INIT.
# Key Points:

The code effectively implements a traffic light controller using a finite state machine.
The state machine transitions are clearly defined based on the current state and the clock signal.
The output signals control the traffic lights according to the current state.
The code is well-structured and easy to understand, with clear variable names and comments.
# Additional Considerations:

The code can be extended to control multiple traffic lights or add features like pedestrian crossing signals.
The timing of the state transitions can be adjusted by modifying the clock frequency or adding delays within the state machine.
For more complex traffic control systems, more advanced algorithms or techniques might be required.
