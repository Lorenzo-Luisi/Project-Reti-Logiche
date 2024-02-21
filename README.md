# Project-Reti-Logiche

# Overview<br>
This project involves the synthesis of a VHDL component with the objective of processing a series of input bits representing information about the output port (with 4 possible ports) and an address (of variable length, up to 16 bits). The address is then communicated to a ROM memory, which returns an 8-bit number. The final step involves routing the 8-bit number to the output port specified in the initial bit series.
# Implementation<br>
The VHDL code for this project is organized into modules with clear interfaces to facilitate understanding and modification. Each module is responsible for a specific task, ensuring modularity and ease of integration.<br>
# Functionality<br>
The VHDL component performs the following key functions:<br>
### Input Processing:<br>
Receives a series of input bits that encode information about the output port and address.<br>
### Address Handling:<br>
Extracts the address information from the input bit series.<br>
Communicates the address to a ROM memory.<br>
### ROM Interaction:<br>
Interfaces with a ROM memory using the extracted address.<br>
Retrieves an 8-bit number from the ROM.<br>
### Output Routing:<br>
Routes the 8-bit number to the specified output port indicated in the initial bit series.<br>
