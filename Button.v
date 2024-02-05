`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 08/21/2023 04:16:36 PM
// Design Name: 
// Module Name: Button
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Button(
    input clk,
    input reset,
    input noisy,
    output debounced,
    output p_edge,
    output n_edge,
    output _edge
    );
    
    debouncer_delay DD(
    .clk(clk),
    .reset(reset),
    .noisy(noisy),
    .debounced(debounced)
    );
    
     edge_detector ED0(
     .clk(clk),
     .reset(reset),
     .level(debounced),
     .n_edge(n_edge),
     .p_edge(p_edge),
     ._edge(_edge)
     );
    
    
    
endmodule
