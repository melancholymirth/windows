// We are implementing a 3-bit (0-7) counter
module counter(
		input logic enable, clk, reset,
		output logic [2:0] out);
		
		always_ff @ (posedge clk)
		begin
			if (reset) 
			begin
				out <= 3'b0;
			end
			else if (enable) 
			begin
				out++;
			end	
		end
endmodule
				
