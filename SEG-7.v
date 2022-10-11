///////////////////////////////////////////////////////////////////////////////
// File downloaded from http://www.nandland.com
///////////////////////////////////////////////////////////////////////////////
// This file converts an input binary number into an output which can get sent
// to a 7-Segment LED.  7-Segment LEDs have the ability to display all decimal
// numbers 0-9 as well as hex digits A, B, C, D, E and F.  The input to this
// module is a 4-bit binary number.  This module will properly drive the
// individual segments of a 7-Segment LED in order to display the digit.
// Hex encoding table can be viewed at:
// http://en.wikipedia.org/wiki/Seven-segment_display
///////////////////////////////////////////////////////////////////////////////
 
module Binary_To_7Segment 
  (
   input       i_Clk,
   input [3:0] i_Binary_Num,
   input       i_EN,
   output      o_Segment_A,
   output      o_Segment_B,
   output      o_Segment_C,
   output      o_Segment_D,
   output      o_Segment_E,
   output      o_Segment_F,
   output      o_Segment_G,
   output	   o_Segment_DP
   );
   
 
  reg [7:0]    r_Hex_Encoding = 8'h00;
   
  // Purpose: Creates a case statement for all possible input binary numbers.
  // Drives r_Hex_Encoding appropriately for each input combination.
     
  always @(posedge i_Clk)
    begin
      case (i_Binary_Num)
        4'b0000 : r_Hex_Encoding <= 8'h3F;
        4'b0001 : r_Hex_Encoding <= 8'h06;
        4'b0010 : r_Hex_Encoding <= 8'h5B;
        4'b0011 : r_Hex_Encoding <= 8'h4F;
        4'b0100 : r_Hex_Encoding <= 8'h66;          
        4'b0101 : r_Hex_Encoding <= 8'h6D;
        4'b0110 : r_Hex_Encoding <= 8'h7D;
        4'b0111 : r_Hex_Encoding <= 8'h07;
        4'b1000 : r_Hex_Encoding <= 8'h7F;
        4'b1001 : r_Hex_Encoding <= 8'h6F;
        4'b1010 : r_Hex_Encoding <= 8'h37;
        4'b1011 : r_Hex_Encoding <= 8'h7C;
        4'b1100 : r_Hex_Encoding <= 8'h39;
        4'b1101 : r_Hex_Encoding <= 8'h5E;
        4'b1110 : r_Hex_Encoding <= 8'h79;
        4'b1111 : r_Hex_Encoding <= 8'h71;
        default : r_Hex_Encoding <= 8'h00;
      endcase
    end // always @ (posedge i_Clk)
    

      // r_Hex_Encoding[7] is unused
      assign o_Segment_A  = r_Hex_Encoding[0];
      assign o_Segment_B  = r_Hex_Encoding[1];
      assign o_Segment_C  = r_Hex_Encoding[2];
      assign o_Segment_D  = r_Hex_Encoding[3];
      assign o_Segment_E  = r_Hex_Encoding[4];
      assign o_Segment_F  = r_Hex_Encoding[5];
      assign o_Segment_G  = r_Hex_Encoding[6];
      assign o_Segment_DP = r_Hex_Encoding[7]; 


endmodule // Binary_To_7Segment