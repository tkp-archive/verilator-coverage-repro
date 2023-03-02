module dut(ifc.dut d);
   // Create 100 cycles of example stimulus
   reg [31:0] count_c;
   assign d.count_o = count_c;

   always_ff @ (posedge d.clk) begin
      //$display("[%0t] clk=%b reset=%b", $time, clk, reset);
      if (d.reset) begin
         count_c <= 0;
      end else begin
         count_c <= count_c + 1;
         if (count_c >= 99) begin
            $write("*-* All Finished *-*\n");
            $finish;
         end
      end
   end
endmodule
