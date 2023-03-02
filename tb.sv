`include "transaction.svh"

/* the testbench itself */
program tb(ifc.bench ds);
	transaction t;

	initial begin
		t = new();

        /* flush hardware */
		repeat(10) begin
			ds.reset = 1'b1;
			@(ds.clk);

		end
		ds.reset = 1'b0;

		@(ds.clk);
        /* end flush */

        /* begin testing */
		repeat(100) begin

			@(ds.clk);
			$display("%t : %s %d \n", $realtime, "Count", ds.count_o);

		end
	end

endprogram
