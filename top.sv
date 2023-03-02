module top (input bit clk);

ifc IFC(clk); // instantiate the interface file
dut dut (IFC.dut); 
tb bench (IFC.bench);

endmodule
