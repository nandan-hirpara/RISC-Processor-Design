`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2023 02:18:37 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg clk;
    
    wire [31:0] pc;
    wire [31:0] dinstOut;
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire [3:0] ealuc;
    wire ealuimm;
    wire [4:0] edestReg;
    wire [31:0] eqa;
    wire [31:0] eqb;
    wire [31:0] eimm32;
    wire mwreg, mm2reg, mwmem;
    wire [4:0] mdestReg;
    wire [31:0] mr, mqb;
    wire wwreg, wm2reg;
    wire [4:0] wdestReg;
    wire [31:0] wr, wdo;
    
    initial begin
        clk <= 1'b0;
    end
    
    Datapath datapath(clk, pc, dinstOut, ewreg, em2reg, ewmem, ealuc, ealuimm, edestReg, eqa, eqb, eimm32, mwreg, mm2reg, mwmem, mdestReg, mr, mqb, wwreg, wm2reg, wdestReg, wr, wdo);
    
    always begin
        #1;
        clk = ~clk;
    end


endmodule 
