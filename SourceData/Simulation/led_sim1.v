`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 01:48:57 PM
// Design Name: 
// Module Name: led_sim1
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


module led_sim1;

reg btn_sig = 0;
    reg clk_sig = 0;
    wire led_sig;
    wire led2_sig;

    parameter clk_period = 10;

    // Instantiate led_module
    led_iface UUT (
        .clk1(btn_sig),
        .clk2(clk_sig),
        .led1(led_sig),
        .led2(led2_sig)
    );

    // Clock process
    initial begin
        forever begin
            clk_sig = 0;
            #(clk_period / 2);
            clk_sig = 1;
            #(clk_period / 2);
        end
    end

    // Simulation process
    initial begin
        repeat(10) begin
            btn_sig = 1;
            #(clk_period * 10);
            btn_sig = 0;
            #(clk_period * 10);
        end
        $stop;
    end


endmodule
