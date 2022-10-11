//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Taner Halibryam 
// 
// Create Date: 09/30/2022 02:40:34 PM
// Design Name: 
// Module Name: 7_SEG_tb
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

 `timescale 1us/1ns
 
  module Binary_To_7Segment_tb;


   reg       r_Clk		   = 1'b0;
   reg [3:0] r_Binary_Num  = 3'b000;
   reg       r_EN          = 1'b0;
   wire      w_Segment_A;
   wire      w_Segment_B;
   wire      w_Segment_C;
   wire      w_Segment_D;
   wire      w_Segment_E;
   wire      w_Segment_F;
   wire      w_Segment_G;
   wire	     w_Segment_DP;
   
   
   Binary_To_7Segment UUT
   (
	.i_Clk(r_Clk),
    .i_Binary_Num(r_Binary_Num),
    .i_EN(r_EN),
    .o_Segment_A(w_Segment_A),
    .o_Segment_B(w_Segment_B),
    .o_Segment_C(w_Segment_C),
    .o_Segment_D(w_Segment_D),
    .o_Segment_E(w_Segment_E),
    .o_Segment_F(w_Segment_F),
    .o_Segment_G(w_Segment_G),
    .o_Segment_DP(w_Segment_DP)
   );
   
	always #200 r_Clk <= !r_Clk;
	
	initial begin
	
	r_EN <= 1'b1;
	
	r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
	
	r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
   
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b0;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b0;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b0;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    r_Binary_Num[0] <= 1'b0;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    r_Binary_Num[0] <= 1'b1;
    r_Binary_Num[1] <= 1'b1;
    r_Binary_Num[2] <= 1'b1;
    r_Binary_Num[3] <= 1'b1;
    #200000; // 0.2 seconds
    
    
    
    if(r_Binary_Num == 4'b1111 & w_Segment_A == 1'b1)
    begin
        $display("##########################");
        $display("## TEST CASE SUCCESSFUL ##");
        $display("##########################");
    end
    else
    begin
        $display("##########################");
        $display("##  TEST CASE FAILED   ##");
        $display("##########################");
    end
            
	$display("Test Complete");
	$finish;
	end

	
   
	endmodule // Binary_To_7Segment