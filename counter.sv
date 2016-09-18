module counter(
		input logic enable, clk, reset,
		output logic [7:0] out);
		
		always_ff @ (posedge clk)
		begin
			if (reset) 
			begin
				out <= 8'b0;
			end
			else if (enable) 
			begin
				out++;
			end	
		end
endmodule
				