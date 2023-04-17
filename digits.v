`timescale 1ns / 1ps

module digits(
    input clk_1Hz,
    input reset,
	 input updown,
    output reg [7:0] count
    );
    // ones reg control
    always @(posedge clk_1Hz or posedge reset)	 
    begin
     if(updown)
       begin	  
          if(reset) begin
            count <= 0;
            end				
          else 
            if(count == 99) begin
                count <= 0;
					 end
            else begin
                count <= count + 1;
					 end
		 end
		else
		  begin
		  if(reset) begin
            count <= 99;
            end				
          else 
            if(count == 0) begin
                count <= 99;
					 end
            else begin
                count <= count - 1;
					 end
		 end
	 end
  
	  endmodule

  
