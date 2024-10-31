`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 01:44:11 PM
// Design Name: 
// Module Name: led_iface
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


module led_iface(
    input wire clk1,
    input wire clk2,
    output wire led1,
    output wire led2
);

 // Button LED
    assign led1 = !clk1; //Since the push button is active Low 
    assign led2 = clk2;

endmodule
